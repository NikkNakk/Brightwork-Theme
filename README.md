# Brightwork Theme
**Version 0.2.0 (Public Test and Preview Version 2.0)**

## Description: 
Brightwork started as a personal theme. The original plan was to make a theme for my personal use,but after many people expressed their interest I began making a public version. This version is public test version 2.

![Brightwork](https://github.com/NikkNakk/Brightwork-theme/blob/master/brightwork_020.png?raw=true) (Wallpaper is The Brig Mercury in Moonlight by Ivan Aivazovsky)

**This theme is still in development, and this is just a test or preview version for those interested.**

<!--ts-->
* [Priority Issues](#Priority-Issues)
* [Roadmap](#Roadmap-and-Goals)
* [Installation](#Installation)
     * [Dependencies](#Dependencies)
     * [Build and Install](#Build)
     * [Extras](#extra-install-information)
     * [Screenshots](#screenshots)
* [Customizing](#theme-user-preferences)
     * [Config File](#instructions-for-_configscss)
     * [Firefox](#Firefox-Theme)
* [Community](#Community)
* [Development](#brightwork-theme-guidelines-development)
<!--te-->


## Priority Issues and Tasks
As stated, this is a test version for the theme. Here is a list of current priority issues that I am focusing on.

* Meson Build:
  - Change render command to output progress rather than each line (looking for help on this)
  - Add colors and shades as an install option that initiates render command, will depreciate render command as a user input

* Windows: 
  - Specific windows need more attention
      - Popups in applications (like firefox) are not consistent
      - Text cursor is not always visible in light variant of theme
      - Specific application issues need to be documented and worked on

* System: 
  - Login display manager needs attention

* Compatability: 
   - Begin porting theme to other environments (In progress for Solus Gnome)!


**Note: These represent current priority issues;**  This is just the list of priority issues. I have my personal notes that have a list of many other issues I have taken note of. The priority issues represent current issues that I believe will be noticed first by many users, and are ones that specifically would damper functionality of the theme enough to weaken support for development. I'm hoping that clarifying this as a test version will help streamline the process of tracking down and tweaking small issues while I am, or others, are working on some of the larger issues that would directly deter people from using the theme. This also gives people a chance to play with the theme without waiting forever! 


## Roadmap and Goals

 1. Ensure meson build is working efficiently (complete) and has more install options (continued progress)
    - Install options should include color and shade arguments
 2. Verify dependencies (complete for Solus Budgie)
 3. Organize GitHub (continued progress)
 4. Create and begin tracking issues (Continued progress)
    - Begun tracking and completing issues on Github
    - Fix issues for specific applications (in progress)
 5. Begin fixing priority issues and updating priority issues list based on user tests and feedback (continued progress)
 6. Complete and update theme design guidelines (continued progress)
 7. Create and complete resources for GitHub page: 
    - Readme (complete)
    - Update Screenshots 
    - Instructions (complete)
    - Formatting (continued)
    - Add more organization for development (features, issues, etc.) (continued)
 8. Begin porting to other environments
    - Porting to Solus Gnome (in progres!)
    - Port to Solus Mate (not started)
    - Port to Solus KDE Plasma (not started)

**Changes**

- Changes to menus
   - Modified menus and popovers to have matching margins across the entire theme.
   - Modified menus and popovers to have matching hover effects across the entire theme.
   - Modified menu and popover buttons to have consistent shapes and colors across the entire theme.

- Changes to Budgie panel
   - Added hover effects to Budgie menus and popovers

- Button and Assets 
   - Reduced redundancies in assets svg file (removed extra objects).
   - Modified all assets to use theme colors for object parts (i.e. slider handle now calls pm_dark).
   - Streamlined svg format by removing extra transform properties.
   - Added assets for spinbuttons that are consistent with theme.

- Fixed spelling mistakes (again, whoops!)

# Installation 

## Dependencies 
Make sure that you have the proper dependencies:
* Currently the preview version is just for Solus Budgie. Other versions will be included in future releases.

* Meson and Ninja
* Inkscape
* Optipng
* sassc 
* git

## Build

1. Clone or download this repository

``` 
git clone https://github.com/Nikknakk/Brightwork-Theme
```

2. Enter the Brightwork-Theme directory

3. Open the ```_config.scss``` and choose your primary color and shade, or any other changes you would like. Build the theme and install with: 
```
meson build
cd build
sudo ninja render install 
```
* *Be patient as the render command will take around a minute or two to complete. I plan on replacing this with a progress bar or something* *

**Note:** You have to run the render command for the initial install. After that, you only have to run it if you change colors. If you do not change colors, you can install other changes much quicker with:
```
sudo ninja install
```
This command completes in less than a second and is more ideal for testing for development.


**Enjoy the theme!**

## Extra Install Information

### Budgie Panel 

To get the Budgie Panel like the screen shots, in Budgie Settings set the bottom panel to dynamic transparency. The icon backgrounds (which are in my plans to adjust) work best with the dock size around 50.

## Screenshots

![Default (Slate_80)](https://github.com/NikkNakk/Brightwork-theme/blob/master/brightwork_020.png?raw=true)

![Default Dark](https://github.com/NikkNakk/Brightwork-theme/blob/master/brightwork_020_dark.png?raw=true)

![Teal_40](https://github.com/NikkNakk/Brightwork-theme/blob/master/teal_40_screenshot.png?raw=true)

![Teal Shades](https://github.com/NikkNakk/Brightwork-theme/blob/master/shades_of_teal_screenshot.png?raw=true)

![Varieties](https://github.com/NikkNakk/Brightwork-theme/blob/master/variety_screenshot_old.png?raw=true)

# Theme User Preferences
All user preferences are currently handled in the ```_config.scss ``` file. This is a sass file that is parsed during install. 

## Instructions for ``` _config.scss ``` 

1. **Primary Color:** 

     - To change the primary color of the theme replace string color with the color of your choice from the included palette. ```$pick_color: 'COLOR';``` Make sure you leave the color in the apostrophes.

        - Ex: To make the primary color dusk you would have: ```$pick_color: 'dusk';``` 
   
2. **Personal Color:** 
  
      - This is the main accent color of the theme (hover color, highlights, level bars, etc...) You can change this color just like the primary color.
  
        - Ex: To have a green accent color you would have: ```$ps_pick: 'green';``` 
  
3. **Shades:**
  
    - The shade values change the overall lightness or darkness of the Primary and Personal colors selected. You can choose a shade between 10 and 100. Currently lighter shades (<30) will cause visibility issues with the light theme variants, this will be fixed soon. 

        - Ex: ```$shade: 40;``` Sets a shade of 40 for the primary theme color
        - Ex: ```$ps_shade: 20; ``` Sets a shade of 20 for the accent color.
  
 
 Color Palette:![image](https://github.com/NikkNakk/Brightwork-theme/blob/master/Color_Palette.png?raw=true)
 
 Palette is from [Mineral UI](https://mineral-ui.com/color). It only uses the color palette and not the Mineral UI guidelines.

4. **Transparency:** 

    - Opacity section will modify most of the transparency effects within the theme. You can adjust these between ranges of  0 and 1, where 0 is completely transparent, and 1 is completely opaque. 

        - Ex: ```$alpha: 0.99``` Sets the main opacity to a 0.99 (slight transparency)
        - Ex: ```$alpha_cool: $alpha - 0.05``` Sets the opacity of background elements 0.94 (.05 less than the main alpha). Of course, you can just place a number in there, but I personally found 0.05 to be the right difference in values for a pleasing effect.
  
 5. **Shadows:**
 
    - The values here will adjust the button shadows (may add window shadows in a future release). To disable shadows on the buttons change the value to 0: ```$enable_btn: 0;```
 
    - You can change the value to anything between 0 and 1 as well.
  
 6. **Radii Values:**
 
    -  Here are the values for the corner radii. 
 
        - ```$corner:18px;``` Sets main window components to 18px
        - ```$incorner: ($corner -10)``` Sets the inner corners to 10 less than the exterior corners. This is to create even borders. If you make the outer corner radii to something smaller than 10, you will have to play with this value to find what you like best.
        - ```btncorner:9999px``` This makes buttons circular. You can mess with this value if you would like non-circular buttons, but it hasn't been tested thoroughly. 

 7. **Budgie Panel**

   - Budgie panel has three regions. You can hide a background of a region by changing the values in the Budgie section of _config.

      - Ex: ```$start_bot: 1;``` will make the start region (left-most) region of the panel visible.

 8. **Raven** 

   - Raven now has a setting to add some spacing between the top and bottom panels, giving it a more card like look. 

      - Ex: ```$raven_pad: 1``` is the default padding in the theme. ```$raven_pad: 0``` will remove the padding. 
      - Any positive integer value should work, but too large of numbers may cause some issues.

 9. **Layout**

   - Margins of windows and objects can be adjusted with ```$mag```. 

      - Ex: ```$mag: 10px;``` will make theme margins 10px in size. 

      - For best results, make ```$incorner``` be equal to ```$corner-$mag```.

## Firefox Theme

Firefox theme is a modified version of [Material Fox](https://github.com/muckSponge/MaterialFox).

To install the Firefox theme:

**NOTE** This overwrites userChrome.css in ```/.mozilla/chrome/*.default```. You may want to backup if you have made changes there.

   1. Install Brightwork Theme following install instructions above. 

   2. In ```build``` run ```sudo ninja fox```.

   3. 
      a. In Firefox [Firefox 69+, about:config] set ```toolkit.legacyUserProfileCustomizations.stylesheets``` to ```true```.
      b. In Firefox [about:config] set ```svg.context-properties.content.enabled``` to ```true```.
   
   4. Restart Firefox.


  

## Community
Some public and community information. This theme started as a personal project, but the community has expressed such a positive interest in it that I want to ensure the community is included in its development. 

**Name**

I decided on the name of Brightwork Theme. In nautical terms, Brightwork is the polished metalwork on ships. If a desktop is symbolic of a ship, it made sense to me that the theme is analogous to the aesthetic of the ship. My hope is that Brightwork can become a polished theme like the brightwork of a ship.

The name is still open to public, but I have not heard a request for any other names so far.

**Feature Request**

One of the large aspects for the vision of the theme was to enable user choice. 

To request a feature please submit an issue and tag it as a enhancement. Follow the instructions od the issue template.

**Involvement**

I will be looking for help with the development of this theme. If you are interested, please reach out or make a pull request.

   * Special thanks: Josh Strobl, JacekJagosz, EbonJaeger, and Staudey for their contributions to the theme already! It has been a big help.

# Brightwork Theme Guidelines (Development)
This project begun just as something for myself. I had zero experience when I started, so I read a bunch of resources before I begun. One thing that became clear was that a proper guideline determined the success of a theme, ui, or ux. Here are the guidelines I wrote up for myself when I was making this theme for myself that I have adapted for this Readme and the continued development of the theme (These guidelines are a work in progress and open to change as well). 

**Key Vision:** 
* Users should be able to easily change key visual elements.
    - Key visual well be defined as elements that are visual aspects that do not hinder functionality, i.e. shadows, colors, radii, etc.
    - Lots of feedback has focused on minor(in functionality) details that can easily be included as configurable properties. Making this a key guideline ensures that the theme will be structured around user preference and choice of these details.
    - This was the initial vision I had for my personal use of this theme. I wanted the option to quickly change small details, and people also requested so many detail changes for their own uses; I think it should represent the continued vision.

**Structure:**

* Content
Main content of a intractable object (window, popup, dialog, application, etc) should be emphasized or gain focus with it's container or shape. Ways to create emphasis:
    - Rounded corners: Round corners make objects easier to find and track.
    - Color: Layers are created with three layers of colors; cool, default, and warm. Main active content should be the default view. Urgent content (popups) are warm, which quickly makes them the focus. Background content (backdrops) are cool to push them out of focus. 
    - Color Specific Use: Colors should be consistent in use. View color is reserved for the most essential area an object, and the main attention of the user (the light or dark color of a theme). This ensures that when users see that color, they know this is the main content they were interested in. 

**Colors:**

* Palette
Colors are used from a pre-selected palette. These colors are mixed and applied to make a vast array of other colors. This pre-selected palette ensures colors will work more harmoniously throughout the theme. Allowing users to select colors is an important property for preference, but having it from a palette that is used for mixing helps avoid color clashes and issues. Many functions are techniques from color theory.

* Color creates depth
Using colors to create depth enables the theme to adhere more closely to the popular flat guidelines of popular UX frameworks, while still enabling the theme to have recognizable and usable layers. 

    - Cool Colors: Cooler colors are naturally pushed into the background of an image, making them less focal and less likely to distract the user.
    
    - Warm Colors: Warmer colors pull objects to the foreground of an image, and create a sense of urgency for that object. It is a useful technique for quickly drawing a user's eye to the a object that needs attention. 
    
## License

Brightwork Theme is available under the terms of the GPL-3.0.
    


