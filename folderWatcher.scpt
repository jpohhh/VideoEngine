FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ENGINE     � 	 	  E N G I N E   
  
 l     ��  ��   ��when files are added to a folder, check if they have an extension in extension_list and haven't been seen around (have a green label in finder). If both are true, pass to HandbrakeCLI in handbrake_location using encoding_options, writing a log file to out_folder/source_filename.txt and the video to out_folder/source_filename.m4v. An overall log showing matches and passing off of files to HandbrakeCLI is written to ~/Library/Logs/Engine.log     �  v w h e n   f i l e s   a r e   a d d e d   t o   a   f o l d e r ,   c h e c k   i f   t h e y   h a v e   a n   e x t e n s i o n   i n   e x t e n s i o n _ l i s t   a n d   h a v e n ' t   b e e n   s e e n   a r o u n d   ( h a v e   a   g r e e n   l a b e l   i n   f i n d e r ) .   I f   b o t h   a r e   t r u e ,   p a s s   t o   H a n d b r a k e C L I   i n   h a n d b r a k e _ l o c a t i o n   u s i n g   e n c o d i n g _ o p t i o n s ,   w r i t i n g   a   l o g   f i l e   t o   o u t _ f o l d e r / s o u r c e _ f i l e n a m e . t x t   a n d   t h e   v i d e o   t o   o u t _ f o l d e r / s o u r c e _ f i l e n a m e . m 4 v .   A n   o v e r a l l   l o g   s h o w i n g   m a t c h e s   a n d   p a s s i n g   o f f   o f   f i l e s   t o   H a n d b r a k e C L I   i s   w r i t t e n   t o   ~ / L i b r a r y / L o g s / E n g i n e . l o g      l     ��  ��    ! by James O'Leary 02-04-2009     �   6 b y   J a m e s   O ' L e a r y   0 2 - 0 4 - 2 0 0 9      l     ��  ��    U Oinspired primarily by the sample AppleScript folder actions in /Library/Scripts     �   � i n s p i r e d   p r i m a r i l y   b y   t h e   s a m p l e   A p p l e S c r i p t   f o l d e r   a c t i o n s   i n   / L i b r a r y / S c r i p t s      l     ��  ��    � {copied and pasted large chunk from http://www.apple.com/applescript/sbrt/index.html to remove the extension from a filename     �   � c o p i e d   a n d   p a s t e d   l a r g e   c h u n k   f r o m   h t t p : / / w w w . a p p l e . c o m / a p p l e s c r i p t / s b r t / i n d e x . h t m l   t o   r e m o v e   t h e   e x t e n s i o n   f r o m   a   f i l e n a m e      l     ��   !��    TODO FOR YOUR PERSONAL USE: attach this as a folder action to the folder you want to watch, change the extension_list to include whatever file extensions you want to be passed to Handbrake, change out_folder and handbrake_location to be the folders appropriate for them    ! � " " T O D O   F O R   Y O U R   P E R S O N A L   U S E :   a t t a c h   t h i s   a s   a   f o l d e r   a c t i o n   t o   t h e   f o l d e r   y o u   w a n t   t o   w a t c h ,   c h a n g e   t h e   e x t e n s i o n _ l i s t   t o   i n c l u d e   w h a t e v e r   f i l e   e x t e n s i o n s   y o u   w a n t   t o   b e   p a s s e d   t o   H a n d b r a k e ,   c h a n g e   o u t _ f o l d e r   a n d   h a n d b r a k e _ l o c a t i o n   t o   b e   t h e   f o l d e r s   a p p r o p r i a t e   f o r   t h e m   # $ # j     �� %�� 0 extension_list   % J      & &  ' ( ' m      ) ) � * *  m k v (  +�� + m     , , � - -  a v i��   $  . / . j    �� 0�� 0 
out_folder   0 m     1 1 � 2 2 V / V o l u m e s / 1 0 0 0 / C o n v e r s i o n s / U n t a g g e d / D r o p b o x / /  3 4 3 j   	 �� 5�� 0 handbrake_location   5 m   	 
 6 6 � 7 7 X / U s e r s / j p o l e a r y / V i d e o / H a n d B r a k e / H a n d B r a k e C L I 4  8 9 8 j    �� :�� 0 encoding_options   : m     ; ; � < < - f   m p 4   - 4   - e   x 2 6 4   - x   b f r a m e s = 3 : r e f = 3 : m e = h e x : b - a d a p t = 2 : s u b m e = 7 : m i x e d - r e f s = 1 : 8 x 8 d c t = 1   - q   0 . 5 5   - E   c a _ a a c , a c 3   - B   1 2 8   - 6   d p l 2   - l   0 : 0 : 0 : 0 9  = > = j    �� ?�� 0 do_second_encode   ? m     @ @ � A A  y e s >  B C B j    �� D�� 0 second_encoding_options   D m     E E � F F � - f   m p 4   - 4   - e   x 2 6 4   - x   l e v e l = 3 0 : c a b a c = 0 : b f r a m e s = 0 : r e f = 2 : m i x e d - r e f s = 1 : m e = h e x : s u b m e = 5   - q   0 . 4 5   - E   c a _ a a c   - B   8 0   - 6   d p l 2   - - w i d t h   4 8 0 C  G H G l     �� I J��   I   FOR TESTING    J � K K    F O R   T E S T I N G H  L M L l     �� N O��   N { u property encoding_options : "-f mp4 -4 -e x264 -x bframes=0:ref=1:me=dia:subme=0 -q 0.01 -E faac,ac3 -B 128 -6 dpl2"    O � P P �   p r o p e r t y   e n c o d i n g _ o p t i o n s   :   " - f   m p 4   - 4   - e   x 2 6 4   - x   b f r a m e s = 0 : r e f = 1 : m e = d i a : s u b m e = 0   - q   0 . 0 1   - E   f a a c , a c 3   - B   1 2 8   - 6   d p l 2 " M  Q R Q l     ��������  ��  ��   R  S T S j    �� U�� 0 engine_directory   U m     V V � W W T $ H O M E / L i b r a r y / A p p l i c a t i o n \   S u p p o r t / E n g i n e / T  X Y X l     ��������  ��  ��   Y  Z [ Z i     \ ] \ I     �� ^ _
�� .facofgetnull���     alis ^ o      ���� 0 this_folder   _ �� `��
�� 
flst ` o      ���� 0 added_items  ��   ] Q     a b c a k   � d d  e f e l   �� g h��   g 6 0log that an event occured to trigger this script    h � i i ` l o g   t h a t   a n   e v e n t   o c c u r e d   t o   t r i g g e r   t h i s   s c r i p t f  j k j I   �� l��
�� .sysoexecTEXT���     TEXT l b     m n m b    
 o p o m     q q � r r � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   > >   E n g i n e . l o g ;   d a t e   |   a w k   ' { p r i n t   $ 4 } '   > >   E n g i n e . l o g ;   e c h o   p n    	 s t s m    	��
�� 
nmbr t n    u v u 2   ��
�� 
cobj v o    ���� 0 added_items   n m   
  w w � x x 4   i t e m s   a d d e d   > >   E n g i n e . l o g��   k  y z y l   �� { |��   { 8 2iterate through all the files added to this folder    | � } } d i t e r a t e   t h r o u g h   a l l   t h e   f i l e s   a d d e d   t o   t h i s   f o l d e r z  ~  ~ r     � � � m    ����  � o      ���� 0 i     � � � W   � � � � k   !� � �  � � � r   ! ' � � � n   ! % � � � 4   " %�� �
�� 
cobj � o   # $���� 0 i   � o   ! "���� 0 added_items   � o      ���� 0 	this_item   �  � � � r   ( / � � � l  ( - ����� � I  ( -�� ���
�� .sysonfo4asfe        file � o   ( )���� 0 	this_item  ��  ��  ��   � l      ����� � o      ���� 0 	item_info  ��  ��   �  � � � l  0 0�� � ���   � 0 *log that we're processing the current item    � � � � T l o g   t h a t   w e ' r e   p r o c e s s i n g   t h e   c u r r e n t   i t e m �  � � � I  0 =�� ���
�� .sysoexecTEXT���     TEXT � b   0 9 � � � b   0 7 � � � m   0 1 � � � � � N c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   P R O C E S S I N G   � l  1 6 ����� � n   1 6 � � � 1   4 6��
�� 
strq � l  1 4 ����� � n   1 4 � � � 1   2 4��
�� 
psxp � o   1 2���� 0 	this_item  ��  ��  ��  ��   � m   7 8 � � � � �    > >   E n g i n e . l o g��   �  � � � l  > >��������  ��  ��   �  � � � l  > >�� � ���   � P Jcheck to make sure the item has finished moving before we start processing    � � � � � c h e c k   t o   m a k e   s u r e   t h e   i t e m   h a s   f i n i s h e d   m o v i n g   b e f o r e   w e   s t a r t   p r o c e s s i n g �  � � � r   > A � � � m   > ?����   � o      ���� 0 oldsize oldSize �  � � � r   B E � � � m   B C������ � o      ���� 0 newsize newSize �  � � � V   F j � � � k   N e � �  � � � l  N N�� � ���   �   Get the file size.    � � � � &   G e t   t h e   f i l e   s i z e . �  � � � r   N S � � � n   N Q � � � 1   O Q��
�� 
ptsz � o   N O���� 0 	item_info   � o      ���� 0 oldsize oldSize �  � � � I  T Y�� ���
�� .sysodelanull��� ��� nmbr � m   T U���� ��   �  � � � l  Z Z�� � ���   � 8 2 Sample the size again after delay for comparison.    � � � � d   S a m p l e   t h e   s i z e   a g a i n   a f t e r   d e l a y   f o r   c o m p a r i s o n . �  � � � r   Z _ � � � n   Z ] � � � 1   [ ]��
�� 
ptsz � o   Z [���� 0 	item_info   � o      ���� 0 newsize newSize �  ��� � I  ` e�� ���
�� .sysoexecTEXT���     TEXT � m   ` a � � � � � � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   T h r o t t l e d   p r o c e s s i n g   u n t i l   f i l e   h a s   s e t t l e d .   > >   E n g i n e . l o g��  ��   � >  J M � � � o   J K���� 0 newsize newSize � o   K L���� 0 oldsize oldSize �  � � � l  k k��������  ��  ��   �  � � � l  k k�� � ���   � � zCheck if one of the added items is a folder, if it is get all the files in that folder too, and add them to our item array    � � � � � C h e c k   i f   o n e   o f   t h e   a d d e d   i t e m s   i s   a   f o l d e r ,   i f   i t   i s   g e t   a l l   t h e   f i l e s   i n   t h a t   f o l d e r   t o o ,   a n d   a d d   t h e m   t o   o u r   i t e m   a r r a y �  � � � Z   k � � ����� � l  k p ����� � =  k p � � � l  k n ����� � n   k n � � � 1   l n��
�� 
kind � l  k l ����� � o   k l���� 0 	item_info  ��  ��  ��  ��   � m   n o � � � � �  F o l d e r��  ��   � k   s � � �  � � � I  s z�� ���
�� .sysoexecTEXT���     TEXT � m   s v � � � � � � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   T h i s   i t e m   i s   a   f o l d e r ,   c h e c k   w h a t s   i n s i d e   > >   E n g i n e . l o g��   �  ��� � O   { � � � � k   � � � �  � � � r   � � � � � l  � � ����  n   � � m   � ���
�� 
nmbr n  � � 2  � ���
�� 
cobj 4   � ���
�� 
cfol o   � ����� 0 	this_item  ��  ��   � o      ���� 0 item_number   �  I  � �����
�� .sysoexecTEXT���     TEXT b   � �	
	 b   � � m   � � � n c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   N u m b e r   o f   i t e m s   i n   f o l d e r ?   o   � ����� 0 item_number  
 m   � � �    > >   E n g i n e . l o g��   �� Y   � ����� k   � �  r   � � n  � � 4   � ���
�� 
cobj o   � ����� 0 j   4   � ���
�� 
cfol o   � ����� 0 	this_item   o      ���� 0 folder_item    r   � � !  b   � �"#" o   � ����� 0 added_items  # l  � �$����$ c   � �%&% o   � ����� 0 folder_item  & m   � ���
�� 
alis��  ��  ! o      ���� 0 added_items   '(' I  � ���)��
�� .sysoexecTEXT���     TEXT) b   � �*+* b   � �,-, m   � �.. �// D c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   A d d e d  - l  � �0����0 n   � �121 1   � ��
� 
strq2 l  � �3�~�}3 n   � �454 1   � ��|
�| 
psxp5 l  � �6�{�z6 c   � �787 o   � ��y�y 0 folder_item  8 m   � ��x
�x 
alis�{  �z  �~  �}  ��  ��  + m   � �99 �::    > >   E n g i n e . l o g��  ( ;�w; I  � ��v<�u
�v .sysoexecTEXT���     TEXT< b   � �=>= b   � �?@? m   � �AA �BB T c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   N o w   t h e r e   a r e  @ n   � �CDC m   � ��t
�t 
nmbrD n  � �EFE 2  � ��s
�s 
cobjF o   � ��r�r 0 added_items  > m   � �GG �HH F   i t e m s   i n   a d d e d _ i t e m s   > >   E n g i n e . l o g�u  �w  �� 0 j   m   � ��q�q  o   � ��p�p 0 item_number  ��  ��   � m   { ~II�                                                                                  MACS   alis    V  Mac                        �U��H+     �
Finder.app                                                       s��0[�        ����  	                CoreServices    �U�'      �0�       �   Q   P  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��   � JKJ l  � ��o�n�m�o  �n  �m  K LML l  � ��lNO�l  N � �check to make sure that the extension is in the allow list, and that the file hasn't been processed already (label color isn't green)   O �PP
 c h e c k   t o   m a k e   s u r e   t h a t   t h e   e x t e n s i o n   i s   i n   t h e   a l l o w   l i s t ,   a n d   t h a t   t h e   f i l e   h a s n ' t   b e e n   p r o c e s s e d   a l r e a d y   ( l a b e l   c o l o r   i s n ' t   g r e e n )M QRQ O   ��STS k   ��UU VWV l  � ��kXY�k  X . (check if the label is green for the file   Y �ZZ P c h e c k   i f   t h e   l a b e l   i s   g r e e n   f o r   t h e   f i l eW [�j[ Z   ��\]�i^\ >  �_`_ c   � �aba l  � �c�h�gc l  � �d�f�ed n   � �efe 1   � ��d
�d 
labif o   � ��c�c 0 	this_item  �f  �e  �h  �g  b m   � ��b
�b 
long` m   � �a�a ] k  �gg hih l �`jk�`  j ) #log that we passed the color filter   k �ll F l o g   t h a t   w e   p a s s e d   t h e   c o l o r   f i l t e ri mnm I �_o�^
�_ .sysoexecTEXT���     TEXTo m  pp �qq � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   P A S S E D   l a b e l   c o l o r   f i l t e r   > >   E n g i n e . l o g�^  n rsr l �]tu�]  t 9 3check if the file has one of our desired extensions   u �vv f c h e c k   i f   t h e   f i l e   h a s   o n e   o f   o u r   d e s i r e d   e x t e n s i o n ss w�\w Z  �xy�[zx l {�Z�Y{ E |}| l ~�X�W~ o  �V�V 0 extension_list  �X  �W  } l �U�T n  ��� 1  �S
�S 
nmxt� l ��R�Q� o  �P�P 0 	item_info  �R  �Q  �U  �T  �Z  �Y  y k  ��� ��� l �O���O  � - 'log that we passed the extension filter   � ��� N l o g   t h a t   w e   p a s s e d   t h e   e x t e n s i o n   f i l t e r� ��� I !�N��M
�N .sysoexecTEXT���     TEXT� m  �� ��� � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   P A S S E D   e x t e n s i o n   f i l t e r   > >   E n g i n e . l o g�M  � ��� l ""�L�K�J�L  �K  �J  � ��� l ""�I���I  � r lneed some way to only invoke HandbrakeCLI if the file is in the extension list, otherwise the script crashes   � ��� � n e e d   s o m e   w a y   t o   o n l y   i n v o k e   H a n d b r a k e C L I   i f   t h e   f i l e   i s   i n   t h e   e x t e n s i o n   l i s t ,   o t h e r w i s e   t h e   s c r i p t   c r a s h e s� ��� r  "%��� m  "#�H�H � o      �G�G 0 	do_encode  � ��� l &&�F�E�D�F  �E  �D  � ��� l &&�C���C  � % generate input path, and log it   � ��� > g e n e r a t e   i n p u t   p a t h ,   a n d   l o g   i t� ��� r  &-��� l &+��B�A� n  &+��� 1  )+�@
�@ 
strq� l &)��?�>� n  &)��� 1  ')�=
�= 
psxp� o  &'�<�< 0 	this_item  �?  �>  �B  �A  � o      �;�; 0 
sourcename  � ��� I .;�:��9
�: .sysoexecTEXT���     TEXT� b  .7��� b  .3��� m  .1�� ��� R c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   S o u r c e   f i l e :  � o  12�8�8 0 
sourcename  � m  36�� ���    > >   E n g i n e . l o g�9  � ��� l <<�7�6�5�7  �6  �5  � ��� l <<�4���4  � � �generate output path by removing the extension from the input filename, add the prefix of the directory to put it in, and adding m4v at the end   � ��� g e n e r a t e   o u t p u t   p a t h   b y   r e m o v i n g   t h e   e x t e n s i o n   f r o m   t h e   i n p u t   f i l e n a m e ,   a d d   t h e   p r e f i x   o f   t h e   d i r e c t o r y   t o   p u t   i t   i n ,   a n d   a d d i n g   m 4 v   a t   t h e   e n d� ��� l <<�3���3  � 8 2 generate a log output path similarly (txt at end)   � ��� d   g e n e r a t e   a   l o g   o u t p u t   p a t h   s i m i l a r l y   ( t x t   a t   e n d )� ��� r  <O��� c  <M��� l <I��2�1� l <I��0�/� n  <I��� 1  EI�.
�. 
rvse� n  <E��� 2  AE�-
�- 
cha � l <A��,�+� n  <A��� 1  =A�*
�* 
pnam� l <=��)�(� o  <=�'�' 0 	item_info  �)  �(  �,  �+  �0  �/  �2  �1  � m  IL�&
�& 
TEXT� o      �%�% 0 out_filename  � ��� r  Pc��� l Pa��$�#� I Pa�"�!�
�" .sysooffslong    ��� null�!  � � ��
�  
psof� m  TW�� ���  .� ���
� 
psin� o  Z[�� 0 out_filename  �  �$  �#  � o      �� 0 x  � ��� r  du��� l ds���� n  ds��� 7 es���
� 
ctxt� l ko���� [  ko��� o  lm�� 0 x  � m  mn�� �  �  � m  pr����� o  de�� 0 out_filename  �  �  � o      �� 0 out_filename  � ��� r  v���� c  v���� l v���� l v���� n  v��� 1  {�
� 
rvse� n  v{��� 2  w{�
� 
cha � o  vw�� 0 out_filename  �  �  �  �  � m  ��

�
 
TEXT� o      �	�	 0 out_filename  � ��� r  ����� l ������ n  ����� 1  ���
� 
strq� l ������ b  ����� b  ����� l �� ��  o  ���� 0 
out_folder  �  �  � l ��� �� o  ������ 0 out_filename  �   ��  � m  �� �  . t x t�  �  �  �  � o      ���� 0 out_logname  �  r  �� l ������ n  ��	
	 1  ����
�� 
strq
 l ������ b  �� b  �� l ������ o  ������ 0 
out_folder  ��  ��   l ������ o  ������ 0 out_filename  ��  ��   m  �� �  . m 4 v��  ��  ��  ��   o      ���� 0 output_path    l ����������  ��  ��    l ������   4 .log the encode output and the log output paths    � \ l o g   t h e   e n c o d e   o u t p u t   a n d   t h e   l o g   o u t p u t   p a t h s  I ������
�� .sysoexecTEXT���     TEXT b  �� b  �� !  m  ��"" �## h c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   E n c o d e   o u t p u t   g o i n g   t o :  ! o  ������ 0 output_path   m  ��$$ �%%    > >   E n g i n e . l o g��   &'& I ����(��
�� .sysoexecTEXT���     TEXT( b  ��)*) b  ��+,+ m  ��-- �.. b c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   E n c o d e   l o g   g o i n g   t o :  , o  ������ 0 out_logname  * m  ��// �00    > >   E n g i n e . l o g��  ' 121 l ����������  ��  ��  2 343 l ����56��  5 ` Zcolor the file we're about to convert green so the script recognizes it as processed later   6 �77 � c o l o r   t h e   f i l e   w e ' r e   a b o u t   t o   c o n v e r t   g r e e n   s o   t h e   s c r i p t   r e c o g n i z e s   i t   a s   p r o c e s s e d   l a t e r4 8��8 O  ��9:9 r  ��;<; m  ������ < n      =>= 1  ����
�� 
labi> 4  ����?
�� 
cobj? o  ������ 0 	this_item  : m  ��@@�                                                                                  MACS   alis    V  Mac                        �U��H+     �
Finder.app                                                       s��0[�        ����  	                CoreServices    �U�'      �0�       �   Q   P  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  ��  �[  z k  ��AA BCB l ����DE��  D c ]we didn't pass the extension filter, signal the encode code to be blocked and log the failure   E �FF � w e   d i d n ' t   p a s s   t h e   e x t e n s i o n   f i l t e r ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r eC GHG r  ��IJI m  ������  J o      ���� 0 	do_encode  H K��K I ����L��
�� .sysoexecTEXT���     TEXTL m  ��MM �NN � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   F A I L E D   E X T E N S I O N   F I L T E R   > >   E n g i n e . l o g��  ��  �\  �i  ^ k  ��OO PQP l ����RS��  R � �we didn't pass the label filter (the file was already processed or someone is too organized), signal the encode code to be blocked and log the failure   S �TT, w e   d i d n ' t   p a s s   t h e   l a b e l   f i l t e r   ( t h e   f i l e   w a s   a l r e a d y   p r o c e s s e d   o r   s o m e o n e   i s   t o o   o r g a n i z e d ) ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r eQ UVU r  ��WXW m  ������  X o      ���� 0 	do_encode  V Y��Y I ����Z��
�� .sysoexecTEXT���     TEXTZ m  ��[[ �\\ � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   F A I L E D   L A B E L   C O L O R   F I L T E R   > >   E n g i n e . l o g��  ��  �j  T m   � �]]�                                                                                  MACS   alis    V  Mac                        �U��H+     �
Finder.app                                                       s��0[�        ����  	                CoreServices    �U�'      �0�       �   Q   P  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  R ^_^ l ����������  ��  ��  _ `a` l ����bc��  b ' !check if we're supposed to encode   c �dd B c h e c k   i f   w e ' r e   s u p p o s e d   t o   e n c o d ea efe Z  ��gh����g =  ��iji o  ������ 0 	do_encode  j m  ������ h k  ��kk lml l ����no��  n � �dump parsed filenames to queue.txt, I tried writing CSV for easier editing but this doesn't work because CSV parses the , in encoding options as a separate field   o �ppB d u m p   p a r s e d   f i l e n a m e s   t o   q u e u e . t x t ,   I   t r i e d   w r i t i n g   C S V   f o r   e a s i e r   e d i t i n g   b u t   t h i s   d o e s n ' t   w o r k   b e c a u s e   C S V   p a r s e s   t h e   ,   i n   e n c o d i n g   o p t i o n s   a s   a   s e p a r a t e   f i e l dm qrq I �&��s��
�� .sysoexecTEXT���     TEXTs b  �"tut b  �vwv b  �xyx b  �z{z b  �|}| b  �~~ b  ���� b  ���� b  ���� b  ����� m  ���� ��� 
 e c h o  � o  ������ 0 
sourcename  � m  ��� ���  \ ;� o  ���� 0 output_path  � m  �� ���  \ ; o  ���� 0 handbrake_location  } m  �� ���  \ ;{ o  ���� 0 encoding_options  y m  �� ���  \ ;w o  ���� 0 out_logname  u m  !�� ��� n   > >   $ H O M E / L i b r a r y / A p p l i c a t i o n \   S u p p o r t / E n g i n e / q u e u e . t x t��  r ��� l ''������  � b \if the second_encode parameter is true, queue another items with the second encoding options   � ��� � i f   t h e   s e c o n d _ e n c o d e   p a r a m e t e r   i s   t r u e ,   q u e u e   a n o t h e r   i t e m s   w i t h   t h e   s e c o n d   e n c o d i n g   o p t i o n s� ��� Z  '�������� =  '0��� o  ',���� 0 do_second_encode  � m  ,/�� ���  y e s� k  3��� ��� r  3B��� l 3@������ n  3@��� 1  >@��
�� 
strq� l 3>������ b  3>��� b  3:��� l 38������ o  38���� 0 
out_folder  ��  ��  � l 89������ o  89���� 0 out_filename  ��  ��  � m  :=�� ��� " - s e c o n d e n c o d e . m 4 v��  ��  ��  ��  � o      ���� 0 output_path  � ��� r  CR��� l CP������ n  CP��� 1  NP��
�� 
strq� l CN������ b  CN��� b  CJ��� l CH������ o  CH���� 0 
out_folder  ��  ��  � l HI������ o  HI���� 0 out_filename  ��  ��  � m  JM�� ��� " - s e c o n d e n c o d e . t x t��  ��  ��  ��  � o      ���� 0 out_logname  � ���� I S������
�� .sysoexecTEXT���     TEXT� b  S|��� b  Sx��� b  Sv��� b  Sr��� b  Sl��� b  Sh��� b  Sb��� b  S^��� b  S\��� b  SX��� m  SV�� ��� 
 e c h o  � o  VW���� 0 
sourcename  � m  X[�� ���  \ ;� o  \]���� 0 output_path  � m  ^a�� ���  \ ;� o  bg���� 0 handbrake_location  � m  hk�� ���  \ ;� o  lq���� 0 second_encoding_options  � m  ru�� ���  \ ;� o  vw���� 0 out_logname  � m  x{�� ��� n   > >   $ H O M E / L i b r a r y / A p p l i c a t i o n \   S u p p o r t / E n g i n e / q u e u e . t x t��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� I �������
�� .sysoexecTEXT���     TEXT� m  ���� ��� � p s   a x   |   g r e p   H a n d B r a k e C L I   |   g r e p   - v   g r e p   |   w c   - l   |   c u t   - d   '   '   - f 8��  � o      ���� (0 ishandbrakerunning isHandbrakeRunning� ��� l ��������  � N H isHandbrakeRunning returns the number of HandBrakeCLI processes running   � ��� �   i s H a n d b r a k e R u n n i n g   r e t u r n s   t h e   n u m b e r   o f   H a n d B r a k e C L I   p r o c e s s e s   r u n n i n g� ���� Z  �������� = ����� o  ������ (0 ishandbrakerunning isHandbrakeRunning� m  ���� ���  0� k  ���� ��� l ��������  � W Qwe're not currently encoding, log it, give the encoding script a kick in the arse   � ��� � w e ' r e   n o t   c u r r e n t l y   e n c o d i n g ,   l o g   i t ,   g i v e   t h e   e n c o d i n g   s c r i p t   a   k i c k   i n   t h e   a r s e�    I ������
�� .sysoexecTEXT���     TEXT m  �� � | c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   A s k e d   q u e u e   t o   s t a r t   > >   E n g i n e . l o g��   �� I ������
�� .sysoexecTEXT���     TEXT b  �� b  ��	
	 m  �� �  c d  
 o  ������ 0 engine_directory   m  �� � : ;   . / e n c o d e r . s h   & >   / d e v / n u l l   &��  ��  ��  � k  ��  l ������   ( "already encoding, quietly log this    � D a l r e a d y   e n c o d i n g ,   q u i e t l y   l o g   t h i s �� I ������
�� .sysoexecTEXT���     TEXT m  �� � � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   Q u e u e   i s   a l r e a d y   r u n n i n g   > >   E n g i n e . l o g��  ��  ��  ��  ��  f  l ����������  ��  ��    l ������   I Cnote for the loop that we passed through index 1 of the added files    � � n o t e   f o r   t h e   l o o p   t h a t   w e   p a s s e d   t h r o u g h   i n d e x   1   o f   t h e   a d d e d   f i l e s  ��  r  ��!"! [  ��#$# o  ������ 0 i  $ m  ������ " o      ���� 0 i  ��   � ?     %&% o    ���� 0 i  & l   '��~' n    ()( m    �}
�} 
nmbr) n   *+* 2   �|
�| 
cobj+ o    �{�{ 0 added_items  �  �~   � ,-, I ���z.�y
�z .sysoexecTEXT���     TEXT. m  ��// �00 x c d   $ H O M E / L i b r a r y / L o g s ;   d a t e   |   a w k   ' { p r i n t   $ 4 } '   > >   E n g i n e . l o g�y  - 121 I ���x3�w
�x .sysoexecTEXT���     TEXT3 m  ��44 �55 � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   E x i t e d   r e p e a t   l o o p ,   s h o u l d   h a v e   h a n d l e d   a l l   a d d e d   f i l e s   > >   E n g i n e . l o g�w  2 676 l ���v�u�t�v  �u  �t  7 898 l ���s�r�q�s  �r  �q  9 :�p: l ���o;<�o  ;  handle errors   < �==  h a n d l e   e r r o r s�p   b R      �n>?
�n .ascrerr ****      � ****> o      �m�m 0 error_message  ? �l@�k
�l 
errn@ o      �j�j 0 error_number  �k   c k  �AA BCB I ���iD�h
�i .sysoexecTEXT���     TEXTD b  ��EFE b  ��GHG m  ��II �JJ 8 c d   $ H O M E / L i b r a r y / L o g s ;   e c h o  H o  ���g�g 0 error_message  F m  ��KK �LL    > >   E n g i n e . l o g�h  C M�fM O  �NON k  �PP QRQ I ��e�d�c
�e .miscactvnull��� ��� obj �d  �c  R S�bS I �aTU
�a .sysodlogaskr        TEXTT o  �`�` 0 error_message  U �_VW
�_ 
btnsV J  	XX Y�^Y m  	ZZ �[[  C a n c e l�^  W �]\]
�] 
dflt\ m  �\�\ ] �[^�Z
�[ 
givu^ m  �Y�Y x�Z  �b  O m  ��__�                                                                                  MACS   alis    V  Mac                        �U��H+     �
Finder.app                                                       s��0[�        ����  	                CoreServices    �U�'      �0�       �   Q   P  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  �f   [ `�X` l     �W�V�U�W  �V  �U  �X       
�Tab 1 6 ; @ E Vc�T  a �S�R�Q�P�O�N�M�L�S 0 extension_list  �R 0 
out_folder  �Q 0 handbrake_location  �P 0 encoding_options  �O 0 do_second_encode  �N 0 second_encoding_options  �M 0 engine_directory  
�L .facofgetnull���     alisb �Kd�K d   ) ,c �J ]�I�Hef�G
�J .facofgetnull���     alis�I 0 this_folder  �H �F�E�D
�F 
flst�E 0 added_items  �D  e �C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�C 0 this_folder  �B 0 added_items  �A 0 i  �@ 0 	this_item  �? 0 	item_info  �> 0 oldsize oldSize�= 0 newsize newSize�< 0 item_number  �; 0 j  �: 0 folder_item  �9 0 	do_encode  �8 0 
sourcename  �7 0 out_filename  �6 0 x  �5 0 out_logname  �4 0 output_path  �3 (0 ishandbrakerunning isHandbrakeRunning�2 0 error_message  �1 0 error_number  f V q�0�/ w�.�- ��,�+ ��*�)�( ��' � �I�&�%.9AG�$�#�"p�!���� ���������"$-/M[�����������������/4�gIK��Z����
�0 
cobj
�/ 
nmbr
�. .sysoexecTEXT���     TEXT
�- .sysonfo4asfe        file
�, 
psxp
�+ 
strq
�* 
ptsz�) 
�( .sysodelanull��� ��� nmbr
�' 
kind
�& 
cfol
�% 
alis
�$ 
labi
�# 
long�" 
�! 
nmxt
�  
pnam
� 
cha 
� 
rvse
� 
TEXT
� 
psof
� 
psin� 
� .sysooffslong    ��� null
� 
ctxt� 0 error_message  g ���
� 
errn� 0 error_number  �  
� .miscactvnull��� ��� obj 
� 
btns
� 
dflt
� 
givu� x
� .sysodlogaskr        TEXT�G ���-�,%�%j OkE�O�h���-�,��/E�O�j E�O��,�,%�%j OjE�OiE�O #h����,E�O�j O��,E�O�j [OY��O��,�  {a j Oa  i*a �/�-�,E�Oa �%a %j O Kk�kh *a �/�/E�O��a &%E�Oa �a &�,�,%a %j Oa ��-�,%a %j [OY��UY hOa  ��a ,a &a  �a j Ob   �a , �a j OkE�O��,�,E�Oa  �%a !%j O�a ",a #-a $,a %&E�O*a &a 'a (�a ) *E�O�[a +\[Z�k\Zi2E�O�a #-a $,a %&E�Ob  �%a ,%�,E�Ob  �%a -%�,E�Oa .�%a /%j Oa 0�%a 1%j Oa  a *�/a ,FUY jE�Oa 2j Y jE�Oa 3j UO�k  �a 4�%a 5%�%a 6%b  %a 7%b  %a 8%�%a 9%j Ob  a :  Rb  �%a ;%�,E�Ob  �%a <%�,E�Oa =�%a >%�%a ?%b  %a @%b  %a A%�%a B%j Y hOa Cj E^ O] a D  a Ej Oa Fb  %a G%j Y 	a Hj Y hO�kE�[OY�NOa Ij Oa Jj OPW ?X K La M] %a N%j Oa  #*j OO] a Pa Qkva Rka Sa Ta  UUascr  ��ޭ