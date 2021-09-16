a = imread('karimah.jpg');
figure(1); imshow(a)
title('Citra Berwarna')

b=a(:,:,1)*0.4+a(:,:,2)*0.32+a(:,:,3)*0.28;
figure(2); imshow(b)
title('Citra Keabuan Rumus Komposisi')

[tinggi,lebar] = size(a);
ambang = 210;%
biner = zeros(tinggi,lebar);
for baris=1 : tinggi
    for kolom=1 : lebar
        if a(baris, kolom)>=ambang
            biner(baris, kolom)=0;
        else
            biner(baris, kolom)=1;
        end
    end
end
figure(3); imshow(biner);
title('Citra Biner')

c = a + 50;
figure(4); imshow (c)
title('brightness')

d = a * 1.1;
figure(5); imshow(d)
title('kontras')
