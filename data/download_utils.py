import time


def retry(fn, *args, max_attempts=3, backoff=5.0, backoff_factor=2.0,
          retryable=(ConnectionError, TimeoutError, OSError), **kwargs):
    last_exc = None
    wait = backoff
    for attempt in range(1, max_attempts + 1):
        try:
            return fn(*args, **kwargs)
        except retryable as exc:
            last_exc = exc
            if attempt < max_attempts:
                print(f'  attempt {attempt}/{max_attempts} failed '
                      f'({type(exc).__name__}: {exc}); retry in {wait:.0f}s')
                time.sleep(wait)
                wait *= backoff_factor
            else:
                print(f'  all {max_attempts} attempts failed for {fn.__name__}')
        except Exception:
            raise
    raise last_exc
