# Brightwork Theme
**Version 0.1.0 (Public Test and Preview Version)**

## Description: 
Brightwork started as a personal theme. The original plan was to make a theme for my personal use, but after many people expressed their interest I began making a public version. This version is a public test or preview version based on my theme. This version has been converted from my original source to a cleaner theme structure and a more appropriate build system (meson). **This theme is still in development, and this is just a test or preview version for those interested.**

<!--ts-->
* [Priority Issues](#Priority-Issues)
* [Roadmap](#Roadmap-and-Goals)
* [Installation](#Installation)
     * [Dependencies](#Dependencies)
     * [Build and Install](#Build)
     * [Extras](#extra-install-information)
     * [Screenshots](#screenshots)
* [Customizing](#theme-user-preferences)
     * [Config File](#instructions-for--configscss)
* [Community](#public-appearences-stuff)
* [Development](#brightwork-theme-guidelines-development)
<!--te-->


## Priority Issues
As stated, this is a test version for the theme. Here is a list of current priority issues that I have been focusing on.

* Meson Build
  - Meson build is functional
  - Change render command to output progress rather than each line
  - Add colors and shades as an install option that initiates render command, will depreciate render command as a user input
  
* Missing or incomplete elements, including:
  - Background elements of some specific windows or applications
  - Text cursor and text highlight not always visible
  - Certain active, selected, or hovered elements need effects
  - Popups for specific windows (like Firefox) do not follow theme guidelines
 
 * Login display manager elements have not been addressed in theme yet
 
 * Some elements always have opaque backgrounds (like notebook to create tabs shapes)
 
 * Padding and margins for some system or specific windows need to be corrected (like system settings)
 
 * Current text color format doesn't work when shade is set too low. On the light theme the text will blend into the foreground views
 
 * Treeview text is not always consistent 

**Note: These represent current priority issues;**  This is just the list of priority issues. I have my personal notes that have a list of many other issues I have taken note of. The priority issues represent current issues that I believe will be noticed first by many users, and are ones that specifically would damper functionality of the theme enough to weaken support for development. I'm hoping that clarifying this as a test version will help streamline the process of tracking down and tweaking small issues while I am, or others, are working on some of the larger issues that would directly deture people from using the theme. This also gives people a chance to play with the theme without waiting forever! 


## Roadmap and Goals

 1. Ensure meson build is working efficiently and has more install options (continued progress)
    -Install options should include color and shade arguments
 2. Verify dependencies (continued progress)
 3. Organize GitHub (continued progress)
 4. Create and begin tracking issues (not started)
    - Priority issue list is on GitHub, but a complete issue task list needs to be organized
    - Start tracking application specific issues to see which application specific sass files are needed
 5. Begin fixing priority issues and updating priority issues list based on user tests and feedback (continued progress)
 6. Complete and update theme design guidelines (continued progress)
    - I want to ensure there is a proper framework for the theme design
 7. Create and complete resources for GitHub page: 
    - Readme 
    - Screenshots
    - Instructions
    - Formatting 

# Installation 

## Dependencies 
Make sure that you have the proper dependencies:
* *Currently the preview version is just for Solus Budgie. Other versions will be included in future releases.

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

2. Extract the zip and change directories into the Brightwork Theme directory

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

### Firefox 

Currently I have not adapted the Firefox theme to the new build system. This will be included during a future release.

## Screenshots

![Teal_40](https://github.com/NikkNakk/Brightwork-theme/blob/master/teal_40_screenshot.png?raw=true)

![Teal Shades](https://github.com/NikkNakk/Brightwork-theme/blob/master/shades_of_teal_screenshot.png?raw=true)

![Dusk_60](https://github.com/NikkNakk/Brightwork-theme/blob/master/dusk_60_screenshot.png?raw=true)
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
  

## Community
Some public and community information. This theme started as a personal project, but the community has expressed such a positive interest in it that I want to ensure the community is included in its development. 

**Name**

I decided on the name of Brightwork Theme. In nautical terms, Brightwork is the polished metalwork on ships. If a desktop is symbolic of a ship, it made sense to me that the theme is analogous to the aesthetic of the ship. My hope is that Brightwork can become a polished theme like the brightwork of a ship.

I want to open the name of this theme to the public. My only hope is that the name remains in the nautical setting. If it is decided to change the name, we will do a public poll on the new name.

**Feature Request**

One of the large aspects for the vision of the theme was to enable user choice. I having been taking requests already, but I want to make this a more official part of the theme and its development. 

**Involvement**

I will be looking for help with the development of this theme. If you are interested, keep following for more details!.


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
    


