function [image] = kspace2image(kspaceData)

image = ifftshift(ifft2(ifftshift(kspaceData)));

end

