Suruma സുറുമ 
=============
Suruma Malayalam Typeface.

സുറുമ മലയാളം ടൈപ്പ്ഫേസ്.

Suruma is the Urdu word for the Arabian Kohl. It's the organic pioneer of all eyeliners. This word was later adopted into Malayalam as well. The designer of the font is Suresh P.

Suruma-3.2.1 is a rehash of earlier releases. The earlier idea of akhand conjuncts for *RA *LA forms is revisited and implemented again with the new opentype specs. The new specs do away with statically-assigned character properties (by the shaping engine) for consonants. Instead, they are font dependent. i.e., post-base forms, below-base forms etc. are all decided by the font itself. This concept was also used in the initial version of suruma font.

On the design part, the glyphs are redrawn using postscript (cubic) curves with 1000 em size and Ascent: 667, Descent: 333. The minimum recommended size for display use is 16px.

The freedesktop users are better advised to use the auto hint module of the freetype rasterizer rather than using the native hinting methods (interpreting these hinting instructions from the font is also patent encumbered) for better results.

Download
--------
Suruma font can be previewed and downloaded from [here](https://smc.org.in/fonts/suruma).

Building from source
--------------------
1. Install the python libraries required for build script:
    ```sh
    pip3 install -r requirements.txt
    ```
2. Build the ttf and woff2 files:
   ```sh
   make webfonts
   ```

License
-------
Suruma is licensed under the GPL-3.0 with Font Exception.

- https://www.gnu.org/licenses/gpl-3.0.en.html
- https://www.gnu.org/licenses/gpl-faq.html#FontException
