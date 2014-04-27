brain = kspace2image(kspace); 
dims = size(brain);
mids = dims/2;

brain4 = brain(mids(1)-dims(1)/4:mids(1)+dims(1)/4, mids(2)-dims(2)/4:mids(2)+dims(2)/4);
brain16 = brain(mids(1)-dims(1)/16:mids(1)+dims(1)/16, mids(2)-dims(2)/16:mids(2)+dims(2)/16);

subplot(1,3,1);
imagesc(abs(brain));
title('Unaltered image');
axis equal;
colormap gray;
subplot(1,3,2);
imagesc(abs(brain4));
title('1/4 resolution image');
axis equal;
colormap gray;
subplot(1,3,3);
imagesc(abs(brain16));
title('1/16 resolution image');
axis equal;
colormap gray;

kspace4 = kspace(mids(1)-dims(1)/4:mids(1)+dims(1)/4, mids(2)-dims(2)/4:mids(2)+dims(2)/4);
kspace16 = kspace(mids(1)-dims(1)/16:mids(1)+dims(1)/16, mids(2)-dims(2)/16:mids(2)+dims(2)/16);
subplot(1,3,1);
imagesc(abs(kspace));
title('Unaltered k-space');
axis equal;
colormap gray;
subplot(1,3,2);
imagesc(abs(kspace4));
title('1/4 resolution k-space');
axis equal;
colormap gray;
subplot(1,3,3);
imagesc(abs(kspace16));
title('1/16 resolution k-space');
axis equal;
colormap gray;

kspace_undersampled = kspace;
kspace_undersampled(1:2:dims(1), :) = 0;
brain_undersampled = kspace2image(kspace_undersampled);
imagesc(abs(brain_undersampled));
title('Undersampled image');
axis equal;
colormap gray;