/// @description Insert description here
// You can write your code in this editor
text = "(C) dangIT\n\nProject Lead\nGraeme Hall\n\nAnalyst\nDylan Masse\n\nProgrammer\nNanxi Zhou\n\nMedia Manager\nAbimbola Adelegan\n\nSources\n\n" + 
"https://www.youtube.com/watch?v=90ypn4l1_z8&t=920s\nSetting up game framework. (Create global constants / player control)\n\n" +
"https://www.youtube.com/watch?v=vwFbxtk8bg0\nCreate menu pages. (Switch options on the menu / select characters)\n\n" +
"https://www.youtube.com/watch?v=HiBOY-Ileu8\nCreate collision system (switch movement sprites and collision boxes)\n\n" +
"https://www.youtube.com/watch?v=2iRKTFxT75Y\nCreate health bars\n\n" +
"https://www.youtube.com/watch?v=ySpWZfcwwSQ\nFade in and out function between rooms\n\n" +
"https://gamemakerchina.github.io/GMS2_manual_en2ch/\nGameMaker Studio 2.0 official documents\n\n" +
"https://downloads.khinsider.com\nGame End sounds, Combat Music, Highscore\n\n" +
"https://www.myinstants.com (snd_pain)\nnwww.soundbible.com\nOther Sounds\n\nwww.spriters-resource.com\nFor extra players\n\nwww.maximoff.alreadyread.net/SpriteSheets/\nFor Mikey and Gavein\n\n" +
"https://www.symbols-n-emoticons.com\nWin counters\n\n" +
"https://imgur.com\nMoving backgrounds (room, dock)\n\n" +
"https://github.com/ForkandBeard/Alferd-Spritesheet-Unpacker/releases\nGavein & Mikey individual sprites\n\n" +
"https://www.deviantart.com/emerald18/art/Some-JUS-effects-355567099\nHit Spark sprites"
x = room_width/2;
y = room_height +50;
height = string_height(text);
audio_stop_all();
audio_play_sound(bgm_credits,1000,true)