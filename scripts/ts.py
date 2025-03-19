import sys

from datetime import datetime, UTC


if len(sys.argv) < 2:
    print(int(datetime.now(UTC).timestamp() * 1e9))
    exit(0)

i = sys.argv[1]

if i.isdigit():
    """
    Input  : 1742428800123456789
    Output : 2025-03-20T00:00:00.123457+00:00
    """
    print(datetime.fromtimestamp(int(i) / 1e9, UTC).isoformat())
else:
    """
    Input  : 2025-03-20
    Output : 1742428800000000000
    """
    print(int(datetime.fromisoformat(f"{i}T00:00:00Z").timestamp() * 1e9))
