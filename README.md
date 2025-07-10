# The problem
The repository uses `v0.87.4` and when running in the background `LOG_LEVEL=debug aztec start --sandbox` (also tried with `verbose`), the event logs "HELLO WORLD TEST" from `context.emit_public_log("HELLO WORLD TEST");` aren't available.
The main interest of this repo is to figure out the reason behind the lack of event logs from `context.emit_public_log(...)`.
However a point of interest is the fact that the event logs nor the debug `debug_log("HELLO WORLD TEST")` produce the expected "HELLO WORLD TEST" message.
