function showImageCentered(img,opts)
arguments
    img;
    opts.FigureName = "Princess Bride Image";
    opts.ScreenSizeProportion = 0.75;
end

if isstring(img) || ischar(img)
    currPath = string(mfilename("fullpath"));
    imgPath = fullfile(fileparts(currPath),"..","images","InigoImage.png");
    img = imread(imgPath);
end

f = figure(Name=opts.FigureName,NumberTitle="off",Visible="off");
ax = axes(Parent=f);
imshow(img,Parent=ax);

pos = get(groot,"MonitorPositions");
minHeight = min(pos(:,4));
f.Position(3:4) = f.Position(3:4)*(0.75*minHeight/f.Position(4));

movegui(f,"center");
drawnow;
f.Visible = "on";

end

