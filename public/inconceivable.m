function inconceivable()

currPath = string(mfilename("fullpath"));
imgPath = fullfile(fileparts(currPath),"..","helpers","InigoImage.png");
img = imread(imgPath);

f = figure(Name="Inconceivable!",NumberTitle="off",Visible="off");
ax = axes(Parent=f);
imshow(img,Parent=ax);

pos = get(groot,"MonitorPositions");
minHeight = min(pos(:,4));
f.Position(3:4) = f.Position(3:4)*(0.75*minHeight/f.Position(4));

movegui(f,"center");
drawnow;
f.Visible = "on";

end

