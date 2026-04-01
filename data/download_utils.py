"""
data/download_utils.py
----------------------
Shared download helpers: retry wrapper for transient network failures.
"""

from __future__ import annotations

import time
import logging
from typing import Callable, TypeVar

T = TypeVar("T")

logger = logging.getLogger(__name__)


def retry(
    fn: Callable[..., T],
    *args,
    max_attempts: int = 3,
    backoff: float = 5.0,
    backoff_factor: float = 2.0,
    retryable: tuple[type[Exception], ...] = (
        ConnectionError, TimeoutError, OSError,
    ),
    **kwargs,
) -> T:
    """Call *fn* with retry on transient failures.

    Args:
        fn:             Callable to invoke.
        max_attempts:   Total attempts (1 = no retry).
        backoff:        Initial wait between retries (seconds).
        backoff_factor: Multiplier applied after each failed attempt.
        retryable:      Exception types that trigger a retry.
                        All other exceptions propagate immediately.

    Returns:
        The return value of *fn*.

    Raises:
        The last exception if all attempts are exhausted.
    """
    last_exc: Exception | None = None
    wait = backoff

    for attempt in range(1, max_attempts + 1):
        try:
            return fn(*args, **kwargs)
        except retryable as exc:
            last_exc = exc
            if attempt < max_attempts:
                logger.warning(
                    "Attempt %d/%d failed (%s: %s). "
                    "Retrying in %.0fs…",
                    attempt, max_attempts,
                    type(exc).__name__, exc, wait,
                )
                time.sleep(wait)
                wait *= backoff_factor
            else:
                logger.error(
                    "All %d attempts failed for %s.",
                    max_attempts, fn.__name__,
                )
        except Exception:
            raise  # non-retryable — propagate immediately

    raise last_exc  # type: ignore[misc]
