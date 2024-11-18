import logging


class MyLogger:

    def __init__(self,
                 name,
                 log_to_console: bool = True,
                 log_to_file: bool = True,
                 log_filename: str = "filename.log",
                 formatter: str = "[%(asctime)s] %(levelname)s"
                                  " PID:%(process)d %(name)s:%(lineno)d | %(message)s",
                 date_format: str = "%d-%m-%Y %H:%M:%S"):
        self.logger = logging.getLogger(name)
        self.logger.setLevel(logging.DEBUG)
        self._formatter = formatter
        self._date_format = date_format

        # Disable handlers inheritance
        self.logger.propagate = False

        # Delete all existing handlers
        if self.logger.handlers:
            self.logger.handlers = []

        # Create formatter
        formatter = logging.Formatter(self._formatter, self._date_format)

        # Logging to console
        if log_to_console:
            console_handler = logging.StreamHandler()
            console_handler.setLevel(logging.DEBUG)
            console_handler.setFormatter(formatter)
            self.logger.addHandler(console_handler)

        # Logging to file
        if log_to_file:
            file_handler = logging.FileHandler(log_filename)
            file_handler.setLevel(logging.DEBUG)
            file_handler.setFormatter(formatter)
            self.logger.addHandler(file_handler)

    def debug(self, msg):
        self.logger.debug(msg)

    def info(self, msg):
        self.logger.info(msg)

    def warning(self, msg):
        self.logger.warning(msg)

    def error(self, msg):
        self.logger.error(msg)

    def critical(self, msg):
        self.logger.critical(msg)
