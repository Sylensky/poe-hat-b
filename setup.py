# -*- coding: utf-8 -*-

import setuptools

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()


setuptools.setup(
    name="poe-hat-b",
    version="0.1.1",
    author="Sylensky",
    author_email="admin@medieval-realm.net",
    description="Waveshare POE Hat (B) for RPi4",
    long_description=long_description,
    long_description_content_type="text/markdown",
    scripts=["main.py"],
    packages=["poe_hat_b"],
    package_data={
        "poe_hat_b": [
            "POE_HAT_B.py",
            "SSD1306.py",
            "*.ttf",
        ]
    },
    python_requires=">=3.8",
    install_requires=["RPi.GPIO", "smbus2", "numpy"],
)
