FasdUAS 1.101.10   ��   ��    k             l     ��  ��    %    This file is part of Engine.     � 	 	 >       T h i s   f i l e   i s   p a r t   o f   E n g i n e .   
  
 l     ��������  ��  ��        l     ��  ��    G A   Engine is free software: you can redistribute it and/or modify     �   �       E n g i n e   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y      l     ��  ��    M G   it under the terms of the GNU General Public License as published by     �   �       i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y      l     ��  ��    J D   the Free Software Foundation, either version 2 of the License, or     �   �       t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   2   o f   t h e   L i c e n s e ,   o r      l     ��  ��    , &   (at your option) any later version.     �   L       ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n .     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ B <   Engine is distributed in the hope that it will be useful,    % � & & x       E n g i n e   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , #  ' ( ' l     �� ) *��   ) G A   but WITHOUT ANY WARRANTY; without even the implied warranty of    * � + + �       b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f (  , - , l     �� . /��   . F @   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the    / � 0 0 �       M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e -  1 2 1 l     �� 3 4��   3 5 /   GNU General Public License for more details.    4 � 5 5 ^       G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 2  6 7 6 l     ��������  ��  ��   7  8 9 8 l     �� : ;��   : J D   You should have received a copy of the GNU General Public License    ; � < < �       Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 9  = > = l     �� ? @��   ? H B   along with Engine.  If not, see <http://www.gnu.org/licenses/>.    @ � A A �       a l o n g   w i t h   E n g i n e .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / > . >  B C B l     �� D E��   D       E � F F    C  G H G l     �� I J��   I E ?   The initial developer of the original code is James O'Leary.    J � K K ~       T h e   i n i t i a l   d e v e l o p e r   o f   t h e   o r i g i n a l   c o d e   i s   J a m e s   O ' L e a r y . H  L M L l     �� N O��   N B <   Portions created by James O'Leary are copyright (C) 2009.    O � P P x       P o r t i o n s   c r e a t e d   b y   J a m e s   O ' L e a r y   a r e   c o p y r i g h t   ( C )   2 0 0 9 . M  Q R Q l     �� S T��   S     All rights reserved.    T � U U .       A l l   r i g h t s   r e s e r v e d . R  V W V l     ��������  ��  ��   W  X Y X l     �� Z [��   Z    Contributors:    [ � \ \      C o n t r i b u t o r s : Y  ] ^ ] l     �� _ `��   _ %       James O'Leary, jpo@me.com    ` � a a >             J a m e s   O ' L e a r y ,   j p o @ m e . c o m ^  b c b l     �� d e��   d  TODO FOR YOUR PERSONAL USE: attach this as a folder action to the folder you want to watch, change the extension_list to include whatever file extensions you want to be passed to Handbrake, change out_folder to be the folder you want the encode and log to be in    e � f f     T O D O   F O R   Y O U R   P E R S O N A L   U S E :   a t t a c h   t h i s   a s   a   f o l d e r   a c t i o n   t o   t h e   f o l d e r   y o u   w a n t   t o   w a t c h ,   c h a n g e   t h e   e x t e n s i o n _ l i s t   t o   i n c l u d e   w h a t e v e r   f i l e   e x t e n s i o n s   y o u   w a n t   t o   b e   p a s s e d   t o   H a n d b r a k e ,   c h a n g e   o u t _ f o l d e r   t o   b e   t h e   f o l d e r   y o u   w a n t   t h e   e n c o d e   a n d   l o g   t o   b e   i n c  g h g j     �� i�� 0 extension_list   i J      j j  k l k m      m m � n n  m k v l  o�� o m     p p � q q  a v i��   h  r s r j    �� t�� 0 
out_folder   t m     u u � v v V / V o l u m e s / 1 0 0 0 / C o n v e r s i o n s / U n t a g g e d / D r o p b o x / s  w x w l     �� y z��   y � � property encoding_options : "-f mp4 -4 -e x264 -x bframes=3:ref=3:me=hex:b-adapt=2:subme=7:mixed-refs=1:8x8dct=1 -q 0.55 -E ca_aac,ac3 -B 128 -6 dpl2 -l 0:0:0:0"    z � { {D   p r o p e r t y   e n c o d i n g _ o p t i o n s   :   " - f   m p 4   - 4   - e   x 2 6 4   - x   b f r a m e s = 3 : r e f = 3 : m e = h e x : b - a d a p t = 2 : s u b m e = 7 : m i x e d - r e f s = 1 : 8 x 8 d c t = 1   - q   0 . 5 5   - E   c a _ a a c , a c 3   - B   1 2 8   - 6   d p l 2   - l   0 : 0 : 0 : 0 " x  | } | j   	 �� ~�� 0 do_second_encode   ~ m   	 
   � � �  y e s }  � � � l     �� � ���   � � � property second_encoding_options : "-f mp4 -4 -e x264 -x level=30:cabac=0:bframes=0:ref=2:mixed-refs=1:me=hex:subme=5 -q 0.45 -E ca_aac -B 80 -6 dpl2 --width 480"    � � � �F   p r o p e r t y   s e c o n d _ e n c o d i n g _ o p t i o n s   :   " - f   m p 4   - 4   - e   x 2 6 4   - x   l e v e l = 3 0 : c a b a c = 0 : b f r a m e s = 0 : r e f = 2 : m i x e d - r e f s = 1 : m e = h e x : s u b m e = 5   - q   0 . 4 5   - E   c a _ a a c   - B   8 0   - 6   d p l 2   - - w i d t h   4 8 0 " �  � � � l     �� � ���   � $  ONLY CHANGE THESE FOR TESTING    � � � � <   O N L Y   C H A N G E   T H E S E   F O R   T E S T I N G �  � � � j    �� ��� 0 encoding_options   � m     � � � � � � - f   m p 4   - 4   - e   x 2 6 4   - x   b f r a m e s = 0 : r e f = 1 : m e = d i a : s u b m e = 0   - q   0 . 0 1   - E   f a a c , a c 3   - B   1 2 8   - 6   d p l 2 �  � � � j    �� ��� 0 second_encoding_options   � m     � � � � � � - f   m p 4   - 4   - e   x 2 6 4   - x   b f r a m e s = 0 : r e f = 1 : m e = d i a : s u b m e = 0   - q   0 . 0 1   - E   f a a c , a c 3   - B   1 2 8   - 6   d p l 2 �  � � � j    �� ��� 0 engine_directory   � m     � � � � � T $ H O M E / L i b r a r y / A p p l i c a t i o n \   S u p p o r t / E n g i n e / �  � � � l     ��������  ��  ��   �  � � � i     � � � I     �� � �
�� .facofgetnull���     alis � o      ���� 0 this_folder   � �� ���
�� 
flst � o      ���� 0 added_items  ��   � Q     � � � � k   � � �  � � � l   �� � ���   � 6 0log that an event occured to trigger this script    � � � � ` l o g   t h a t   a n   e v e n t   o c c u r e d   t o   t r i g g e r   t h i s   s c r i p t �  � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b    
 � � � m     � � � � � � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   > >   E n g i n e . l o g ;   d a t e   |   a w k   ' { p r i n t   $ 4 } '   > >   E n g i n e . l o g ;   e c h o   � n    	 � � � m    	��
�� 
nmbr � n    � � � 2   ��
�� 
cobj � o    ���� 0 added_items   � m   
  � � � � � 4   i t e m s   a d d e d   > >   E n g i n e . l o g��   �  � � � l   �� � ���   � 8 2iterate through all the files added to this folder    � � � � d i t e r a t e   t h r o u g h   a l l   t h e   f i l e s   a d d e d   t o   t h i s   f o l d e r �  � � � r     � � � m    ����  � o      ���� 0 i   �  � � � W   � � � � k   !� � �  � � � r   ! ' � � � n   ! % � � � 4   " %�� �
�� 
cobj � o   # $���� 0 i   � o   ! "���� 0 added_items   � o      ���� 0 	this_item   �  � � � r   ( / � � � l  ( - ����� � I  ( -�� ���
�� .sysonfo4asfe        file � o   ( )���� 0 	this_item  ��  ��  ��   � l      ����� � o      ���� 0 	item_info  ��  ��   �  � � � l  0 0�� � ���   � 0 *log that we're processing the current item    � � � � T l o g   t h a t   w e ' r e   p r o c e s s i n g   t h e   c u r r e n t   i t e m �  � � � I  0 =�� ���
�� .sysoexecTEXT���     TEXT � b   0 9 � � � b   0 7 � � � m   0 1 � � � � � N c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   P R O C E S S I N G   � l  1 6 ����� � n   1 6 � � � 1   4 6��
�� 
strq � l  1 4 ����� � n   1 4 � � � 1   2 4��
�� 
psxp � o   1 2���� 0 	this_item  ��  ��  ��  ��   � m   7 8 � � � � �    > >   E n g i n e . l o g��   �  � � � l  > >��������  ��  ��   �  � � � l  > >�� � ���   � P Jcheck to make sure the item has finished moving before we start processing    � � � � � c h e c k   t o   m a k e   s u r e   t h e   i t e m   h a s   f i n i s h e d   m o v i n g   b e f o r e   w e   s t a r t   p r o c e s s i n g �  � � � r   > A � � � m   > ?����   � o      ���� 0 oldsize oldSize �  � � � r   B E � � � m   B C������ � o      ���� 0 newsize newSize �  � � � V   F j � � � k   N e    l  N N����     Get the file size.    � &   G e t   t h e   f i l e   s i z e .  r   N S	 n   N Q

 1   O Q��
�� 
ptsz o   N O���� 0 	item_info  	 o      ���� 0 oldsize oldSize  I  T Y����
�� .sysodelanull��� ��� nmbr m   T U���� ��    l  Z Z����   8 2 Sample the size again after delay for comparison.    � d   S a m p l e   t h e   s i z e   a g a i n   a f t e r   d e l a y   f o r   c o m p a r i s o n .  r   Z _ n   Z ] 1   [ ]��
�� 
ptsz o   Z [���� 0 	item_info   o      ���� 0 newsize newSize �� I  ` e����
�� .sysoexecTEXT���     TEXT m   ` a � � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   T h r o t t l e d   p r o c e s s i n g   u n t i l   f i l e   h a s   s e t t l e d .   > >   E n g i n e . l o g��  ��   � >  J M o   J K���� 0 newsize newSize o   K L���� 0 oldsize oldSize �  !  l  k k��������  ��  ��  ! "#" l  k k��$%��  $ � zCheck if one of the added items is a folder, if it is get all the files in that folder too, and add them to our item array   % �&& � C h e c k   i f   o n e   o f   t h e   a d d e d   i t e m s   i s   a   f o l d e r ,   i f   i t   i s   g e t   a l l   t h e   f i l e s   i n   t h a t   f o l d e r   t o o ,   a n d   a d d   t h e m   t o   o u r   i t e m   a r r a y# '(' Z   k �)*����) l  k p+����+ =  k p,-, l  k n.����. n   k n/0/ 1   l n��
�� 
kind0 l  k l1����1 o   k l���� 0 	item_info  ��  ��  ��  ��  - m   n o22 �33  F o l d e r��  ��  * k   s �44 565 I  s z��7��
�� .sysoexecTEXT���     TEXT7 m   s v88 �99 � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   T h i s   i t e m   i s   a   f o l d e r ,   c h e c k   w h a t s   i n s i d e   > >   E n g i n e . l o g��  6 :��: O   { �;<; k   � �== >?> r   � �@A@ l  � �B����B n   � �CDC m   � ���
�� 
nmbrD n  � �EFE 2  � ���
�� 
cobjF 4   � ���G
�� 
cfolG o   � ����� 0 	this_item  ��  ��  A o      ���� 0 item_number  ? HIH I  � ��J�~
� .sysoexecTEXT���     TEXTJ b   � �KLK b   � �MNM m   � �OO �PP n c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   N u m b e r   o f   i t e m s   i n   f o l d e r ?  N o   � ��}�} 0 item_number  L m   � �QQ �RR    > >   E n g i n e . l o g�~  I S�|S Y   � �T�{UV�zT k   � �WW XYX r   � �Z[Z n  � �\]\ 4   � ��y^
�y 
cobj^ o   � ��x�x 0 j  ] 4   � ��w_
�w 
cfol_ o   � ��v�v 0 	this_item  [ o      �u�u 0 folder_item  Y `a` r   � �bcb b   � �ded o   � ��t�t 0 added_items  e l  � �f�s�rf c   � �ghg o   � ��q�q 0 folder_item  h m   � ��p
�p 
alis�s  �r  c o      �o�o 0 added_items  a iji I  � ��nk�m
�n .sysoexecTEXT���     TEXTk b   � �lml b   � �non m   � �pp �qq D c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   A d d e d  o l  � �r�l�kr n   � �sts 1   � ��j
�j 
strqt l  � �u�i�hu n   � �vwv 1   � ��g
�g 
psxpw l  � �x�f�ex c   � �yzy o   � ��d�d 0 folder_item  z m   � ��c
�c 
alis�f  �e  �i  �h  �l  �k  m m   � �{{ �||    > >   E n g i n e . l o g�m  j }�b} I  � ��a~�`
�a .sysoexecTEXT���     TEXT~ b   � �� b   � ���� m   � ��� ��� T c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   N o w   t h e r e   a r e  � n   � ���� m   � ��_
�_ 
nmbr� n  � ���� 2  � ��^
�^ 
cobj� o   � ��]�] 0 added_items  � m   � ��� ��� F   i t e m s   i n   a d d e d _ i t e m s   > >   E n g i n e . l o g�`  �b  �{ 0 j  U m   � ��\�\ V o   � ��[�[ 0 item_number  �z  �|  < m   { ~���                                                                                  MACS   alis    V  Mac                        �U��H+     �
Finder.app                                                       s��0[�        ����  	                CoreServices    �U�'      �0�       �   Q   P  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��  ( ��� l  � ��Z�Y�X�Z  �Y  �X  � ��� l  � ��W���W  � � �check to make sure that the extension is in the allow list, and that the file hasn't been processed already (label color isn't green)   � ���
 c h e c k   t o   m a k e   s u r e   t h a t   t h e   e x t e n s i o n   i s   i n   t h e   a l l o w   l i s t ,   a n d   t h a t   t h e   f i l e   h a s n ' t   b e e n   p r o c e s s e d   a l r e a d y   ( l a b e l   c o l o r   i s n ' t   g r e e n )� ��� O   ����� k   ���� ��� l  � ��V���V  � . (check if the label is green for the file   � ��� P c h e c k   i f   t h e   l a b e l   i s   g r e e n   f o r   t h e   f i l e� ��U� Z   �����T�� >  ���� c   � ���� l  � ���S�R� l  � ���Q�P� n   � ���� 1   � ��O
�O 
labi� o   � ��N�N 0 	this_item  �Q  �P  �S  �R  � m   � ��M
�M 
long� m   � �L�L � k  ��� ��� l �K���K  � ) #log that we passed the color filter   � ��� F l o g   t h a t   w e   p a s s e d   t h e   c o l o r   f i l t e r� ��� I �J��I
�J .sysoexecTEXT���     TEXT� m  �� ��� � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   P A S S E D   l a b e l   c o l o r   f i l t e r   > >   E n g i n e . l o g�I  � ��� l �H���H  � 9 3check if the file has one of our desired extensions   � ��� f c h e c k   i f   t h e   f i l e   h a s   o n e   o f   o u r   d e s i r e d   e x t e n s i o n s� ��G� Z  ����F�� l ��E�D� E ��� l ��C�B� o  �A�A 0 extension_list  �C  �B  � l ��@�?� n  ��� 1  �>
�> 
nmxt� l ��=�<� o  �;�; 0 	item_info  �=  �<  �@  �?  �E  �D  � k  ��� ��� l �:���:  � - 'log that we passed the extension filter   � ��� N l o g   t h a t   w e   p a s s e d   t h e   e x t e n s i o n   f i l t e r� ��� I !�9��8
�9 .sysoexecTEXT���     TEXT� m  �� ��� � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   P A S S E D   e x t e n s i o n   f i l t e r   > >   E n g i n e . l o g�8  � ��� l ""�7�6�5�7  �6  �5  � ��� l ""�4���4  � r lneed some way to only invoke HandbrakeCLI if the file is in the extension list, otherwise the script crashes   � ��� � n e e d   s o m e   w a y   t o   o n l y   i n v o k e   H a n d b r a k e C L I   i f   t h e   f i l e   i s   i n   t h e   e x t e n s i o n   l i s t ,   o t h e r w i s e   t h e   s c r i p t   c r a s h e s� ��� r  "%��� m  "#�3�3 � o      �2�2 0 	do_encode  � ��� l &&�1�0�/�1  �0  �/  � ��� l &&�.���.  � % generate input path, and log it   � ��� > g e n e r a t e   i n p u t   p a t h ,   a n d   l o g   i t� ��� r  &-��� l &+��-�,� n  &+��� 1  )+�+
�+ 
strq� l &)��*�)� n  &)��� 1  ')�(
�( 
psxp� o  &'�'�' 0 	this_item  �*  �)  �-  �,  � o      �&�& 0 
sourcename  � ��� I .;�%��$
�% .sysoexecTEXT���     TEXT� b  .7��� b  .3��� m  .1�� ��� R c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   S o u r c e   f i l e :  � o  12�#�# 0 
sourcename  � m  36�� ���    > >   E n g i n e . l o g�$  � ��� l <<�"�!� �"  �!  �   � ��� l <<����  � � �generate output path by removing the extension from the input filename, add the prefix of the directory to put it in, and adding m4v at the end   � ��� g e n e r a t e   o u t p u t   p a t h   b y   r e m o v i n g   t h e   e x t e n s i o n   f r o m   t h e   i n p u t   f i l e n a m e ,   a d d   t h e   p r e f i x   o f   t h e   d i r e c t o r y   t o   p u t   i t   i n ,   a n d   a d d i n g   m 4 v   a t   t h e   e n d� ��� l <<� �    8 2 generate a log output path similarly (txt at end)    � d   g e n e r a t e   a   l o g   o u t p u t   p a t h   s i m i l a r l y   ( t x t   a t   e n d )�  r  <O c  <M l <I	��	 l <I
��
 n  <I 1  EI�
� 
rvse n  <E 2  AE�
� 
cha  l <A�� n  <A 1  =A�
� 
pnam l <=�� o  <=�� 0 	item_info  �  �  �  �  �  �  �  �   m  IL�
� 
TEXT o      �� 0 out_filename    r  Pc l Pa�� I Pa��
� .sysooffslong    ��� null�   �
� 
psof m  TW �  . �
�	
�
 
psin o  Z[�� 0 out_filename  �	  �  �   o      �� 0 x    r  du !  l ds"��" n  ds#$# 7 es�%&
� 
ctxt% l ko'��' [  ko()( o  lm�� 0 x  ) m  mn� �  �  �  & m  pr������$ o  de���� 0 out_filename  �  �  ! o      ���� 0 out_filename   *+* r  v�,-, c  v�./. l v0����0 l v1����1 n  v232 1  {��
�� 
rvse3 n  v{454 2  w{��
�� 
cha 5 o  vw���� 0 out_filename  ��  ��  ��  ��  / m  ���
�� 
TEXT- o      ���� 0 out_filename  + 676 r  ��898 l ��:����: n  ��;<; 1  ����
�� 
strq< l ��=����= b  ��>?> b  ��@A@ l ��B����B o  ������ 0 
out_folder  ��  ��  A l ��C����C o  ������ 0 out_filename  ��  ��  ? m  ��DD �EE  . t x t��  ��  ��  ��  9 o      ���� 0 out_logname  7 FGF r  ��HIH l ��J����J n  ��KLK 1  ����
�� 
strqL l ��M����M b  ��NON b  ��PQP l ��R����R o  ������ 0 
out_folder  ��  ��  Q l ��S����S o  ������ 0 out_filename  ��  ��  O m  ��TT �UU  . m 4 v��  ��  ��  ��  I o      ���� 0 output_path  G VWV l ����������  ��  ��  W XYX l ����Z[��  Z 4 .log the encode output and the log output paths   [ �\\ \ l o g   t h e   e n c o d e   o u t p u t   a n d   t h e   l o g   o u t p u t   p a t h sY ]^] I ����_��
�� .sysoexecTEXT���     TEXT_ b  ��`a` b  ��bcb m  ��dd �ee h c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   E n c o d e   o u t p u t   g o i n g   t o :  c o  ������ 0 output_path  a m  ��ff �gg    > >   E n g i n e . l o g��  ^ hih I ����j��
�� .sysoexecTEXT���     TEXTj b  ��klk b  ��mnm m  ��oo �pp b c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   E n c o d e   l o g   g o i n g   t o :  n o  ������ 0 out_logname  l m  ��qq �rr    > >   E n g i n e . l o g��  i sts l ����������  ��  ��  t uvu l ����wx��  w ` Zcolor the file we're about to convert green so the script recognizes it as processed later   x �yy � c o l o r   t h e   f i l e   w e ' r e   a b o u t   t o   c o n v e r t   g r e e n   s o   t h e   s c r i p t   r e c o g n i z e s   i t   a s   p r o c e s s e d   l a t e rv z��z O  ��{|{ r  ��}~} m  ������ ~ n      � 1  ����
�� 
labi� 4  �����
�� 
cobj� o  ������ 0 	this_item  | m  �����                                                                                  MACS   alis    V  Mac                        �U��H+     �
Finder.app                                                       s��0[�        ����  	                CoreServices    �U�'      �0�       �   Q   P  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  ��  �F  � k  ���� ��� l ��������  � c ]we didn't pass the extension filter, signal the encode code to be blocked and log the failure   � ��� � w e   d i d n ' t   p a s s   t h e   e x t e n s i o n   f i l t e r ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r e� ��� r  ����� m  ������  � o      ���� 0 	do_encode  � ���� I �������
�� .sysoexecTEXT���     TEXT� m  ���� ��� � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   F A I L E D   E X T E N S I O N   F I L T E R   > >   E n g i n e . l o g��  ��  �G  �T  � k  ���� ��� l ��������  � � �we didn't pass the label filter (the file was already processed or someone is too organized), signal the encode code to be blocked and log the failure   � ���, w e   d i d n ' t   p a s s   t h e   l a b e l   f i l t e r   ( t h e   f i l e   w a s   a l r e a d y   p r o c e s s e d   o r   s o m e o n e   i s   t o o   o r g a n i z e d ) ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r e� ��� r  ����� m  ������  � o      ���� 0 	do_encode  � ���� I �������
�� .sysoexecTEXT���     TEXT� m  ���� ��� � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   F A I L E D   L A B E L   C O L O R   F I L T E R   > >   E n g i n e . l o g��  ��  �U  � m   � ����                                                                                  MACS   alis    V  Mac                        �U��H+     �
Finder.app                                                       s��0[�        ����  	                CoreServices    �U�'      �0�       �   Q   P  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  � ��� l ����������  ��  ��  � ��� l ��������  � ' !check if we're supposed to encode   � ��� B c h e c k   i f   w e ' r e   s u p p o s e d   t o   e n c o d e� ��� Z  ��������� =  ����� o  ������ 0 	do_encode  � m  ������ � k  ���� ��� l ��������  � � �dump parsed filenames to queue.txt, I tried writing CSV for easier editing but this doesn't work because CSV parses the , in encoding options as a separate field   � ���B d u m p   p a r s e d   f i l e n a m e s   t o   q u e u e . t x t ,   I   t r i e d   w r i t i n g   C S V   f o r   e a s i e r   e d i t i n g   b u t   t h i s   d o e s n ' t   w o r k   b e c a u s e   C S V   p a r s e s   t h e   ,   i n   e n c o d i n g   o p t i o n s   a s   a   s e p a r a t e   f i e l d� ��� I ������
�� .sysoexecTEXT���     TEXT� b  ���� b  ���� b  ���� b  ���� b  ���� b  ���� b  ���� b  ����� m  ���� ��� 
 e c h o  � o  ������ 0 
sourcename  � m  ��� ���  \ ;� o  ���� 0 output_path  � m  �� ���  \ ;� o  ���� 0 encoding_options  � m  �� ���  \ ;� o  ���� 0 out_logname  � m  �� ��� n   > >   $ H O M E / L i b r a r y / A p p l i c a t i o n \   S u p p o r t / E n g i n e / q u e u e . t x t��  � ��� l ������  � b \if the second_encode parameter is true, queue another items with the second encoding options   � ��� � i f   t h e   s e c o n d _ e n c o d e   p a r a m e t e r   i s   t r u e ,   q u e u e   a n o t h e r   i t e m s   w i t h   t h e   s e c o n d   e n c o d i n g   o p t i o n s� ��� Z  p������� =  &��� o  "���� 0 do_second_encode  � m  "%�� ���  y e s� k  )l�� ��� r  )8��� l )6������ n  )6��� 1  46��
�� 
strq� l )4������ b  )4��� b  )0��� l ).������ o  ).���� 0 
out_folder  ��  ��  � l ./������ o  ./���� 0 out_filename  ��  ��  � m  03�� ��� " - s e c o n d e n c o d e . m 4 v��  ��  ��  ��  � o      ���� 0 output_path  � ��� r  9H��� l 9F������ n  9F��� 1  DF��
�� 
strq� l 9D������ b  9D��� b  9@��� l 9>������ o  9>���� 0 
out_folder  ��  ��  � l >?������ o  >?���� 0 out_filename  ��  ��  � m  @C�� ��� " - s e c o n d e n c o d e . t x t��  ��  ��  ��  � o      ���� 0 out_logname  � ���� I Il�����
�� .sysoexecTEXT���     TEXT� b  Ih   b  Id b  Ib b  I^ b  IX	 b  IT

 b  IR b  IN m  IL � 
 e c h o   o  LM���� 0 
sourcename   m  NQ �  \ ; o  RS���� 0 output_path  	 m  TW �  \ ; o  X]���� 0 second_encoding_options   m  ^a �  \ ; o  bc���� 0 out_logname   m  dg � n   > >   $ H O M E / L i b r a r y / A p p l i c a t i o n \   S u p p o r t / E n g i n e / q u e u e . t x t��  ��  ��  ��  �  l qq��������  ��  ��    r  q| I qx�� ��
�� .sysoexecTEXT���     TEXT  m  qt!! �"" � p s   a x   |   g r e p   H a n d B r a k e C L I   |   g r e p   - v   g r e p   |   w c   - l   |   c u t   - d   '   '   - f 8��   o      ���� (0 ishandbrakerunning isHandbrakeRunning #$# l }}��%&��  % N H isHandbrakeRunning returns the number of HandBrakeCLI processes running   & �'' �   i s H a n d b r a k e R u n n i n g   r e t u r n s   t h e   n u m b e r   o f   H a n d B r a k e C L I   p r o c e s s e s   r u n n i n g$ (��( Z  }�)*��+) = }�,-, o  }����� (0 ishandbrakerunning isHandbrakeRunning- m  ��.. �//  0* k  ��00 121 l ����34��  3 W Qwe're not currently encoding, log it, give the encoding script a kick in the arse   4 �55 � w e ' r e   n o t   c u r r e n t l y   e n c o d i n g ,   l o g   i t ,   g i v e   t h e   e n c o d i n g   s c r i p t   a   k i c k   i n   t h e   a r s e2 676 I ���8�~
� .sysoexecTEXT���     TEXT8 m  ��99 �:: | c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   A s k e d   q u e u e   t o   s t a r t   > >   E n g i n e . l o g�~  7 ;�}; I ���|<�{
�| .sysoexecTEXT���     TEXT< b  ��=>= b  ��?@? m  ��AA �BB  c d  @ o  ���z�z 0 engine_directory  > m  ��CC �DD 8 ;   . / e n g i n e . s h   & >   / d e v / n u l l   &�{  �}  ��  + k  ��EE FGF l ���yHI�y  H ( "already encoding, quietly log this   I �JJ D a l r e a d y   e n c o d i n g ,   q u i e t l y   l o g   t h i sG K�xK I ���wL�v
�w .sysoexecTEXT���     TEXTL m  ��MM �NN � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   Q u e u e   i s   a l r e a d y   r u n n i n g   > >   E n g i n e . l o g�v  �x  ��  ��  ��  � OPO l ���u�t�s�u  �t  �s  P QRQ l ���rST�r  S I Cnote for the loop that we passed through index 1 of the added files   T �UU � n o t e   f o r   t h e   l o o p   t h a t   w e   p a s s e d   t h r o u g h   i n d e x   1   o f   t h e   a d d e d   f i l e sR V�qV r  ��WXW [  ��YZY o  ���p�p 0 i  Z m  ���o�o X o      �n�n 0 i  �q   � ?     [\[ o    �m�m 0 i  \ l   ]�l�k] n    ^_^ m    �j
�j 
nmbr_ n   `a` 2   �i
�i 
cobja o    �h�h 0 added_items  �l  �k   � bcb I ���gd�f
�g .sysoexecTEXT���     TEXTd m  ��ee �ff x c d   $ H O M E / L i b r a r y / L o g s ;   d a t e   |   a w k   ' { p r i n t   $ 4 } '   > >   E n g i n e . l o g�f  c ghg I ���ei�d
�e .sysoexecTEXT���     TEXTi m  ��jj �kk � c d   $ H O M E / L i b r a r y / L o g s ;   e c h o   E x i t e d   r e p e a t   l o o p ,   s h o u l d   h a v e   h a n d l e d   a l l   a d d e d   f i l e s   > >   E n g i n e . l o g�d  h lml l ���c�b�a�c  �b  �a  m non l ���`�_�^�`  �_  �^  o p�]p l ���\qr�\  q  handle errors   r �ss  h a n d l e   e r r o r s�]   � R      �[tu
�[ .ascrerr ****      � ****t o      �Z�Z 0 error_message  u �Yv�X
�Y 
errnv o      �W�W 0 error_number  �X   � k  �ww xyx I ���Vz�U
�V .sysoexecTEXT���     TEXTz b  ��{|{ b  ��}~} m  �� ��� 8 c d   $ H O M E / L i b r a r y / L o g s ;   e c h o  ~ o  ���T�T 0 error_message  | m  ���� ���    > >   E n g i n e . l o g�U  y ��S� O  ���� k  �
�� ��� I ���R�Q�P
�R .miscactvnull��� ��� obj �Q  �P  � ��O� I �
�N��
�N .sysodlogaskr        TEXT� o  ���M�M 0 error_message  � �L��
�L 
btns� J  ���� ��K� m  ���� ���  C a n c e l�K  � �J��
�J 
dflt� m  ���I�I � �H��G
�H 
givu� m  �F�F x�G  �O  � m  �����                                                                                  MACS   alis    V  Mac                        �U��H+     �
Finder.app                                                       s��0[�        ����  	                CoreServices    �U�'      �0�       �   Q   P  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  �S   � ��E� l     �D�C�B�D  �C  �B  �E       	�A�� u  � � ���A  � �@�?�>�=�<�;�:�@ 0 extension_list  �? 0 
out_folder  �> 0 do_second_encode  �= 0 encoding_options  �< 0 second_encoding_options  �; 0 engine_directory  
�: .facofgetnull���     alis� �9��9 �   m p� �8 ��7�6���5
�8 .facofgetnull���     alis�7 0 this_folder  �6 �4�3�2
�4 
flst�3 0 added_items  �2  � �1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ��1 0 this_folder  �0 0 added_items  �/ 0 i  �. 0 	this_item  �- 0 	item_info  �, 0 oldsize oldSize�+ 0 newsize newSize�* 0 item_number  �) 0 j  �( 0 folder_item  �' 0 	do_encode  �& 0 
sourcename  �% 0 out_filename  �$ 0 x  �# 0 out_logname  �" 0 output_path  �! (0 ishandbrakerunning isHandbrakeRunning�  0 error_message  � 0 error_number  � T ��� ��� ��� �����28��OQ�p{���������������
�	���DTdfoq����������!.9ACMej��������� ��
� 
cobj
� 
nmbr
� .sysoexecTEXT���     TEXT
� .sysonfo4asfe        file
� 
psxp
� 
strq
� 
ptsz� 
� .sysodelanull��� ��� nmbr
� 
kind
� 
cfol
� 
alis
� 
labi
� 
long� 
� 
nmxt
� 
pnam
� 
cha 
� 
rvse
� 
TEXT
�
 
psof
�	 
psin� 
� .sysooffslong    ��� null
� 
ctxt� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  
� .miscactvnull��� ��� obj 
� 
btns
� 
dflt
� 
givu�  x
�� .sysodlogaskr        TEXT�5���-�,%�%j OkE�O�h���-�,��/E�O�j E�O��,�,%�%j OjE�OiE�O #h����,E�O�j O��,E�O�j [OY��O��,�  {a j Oa  i*a �/�-�,E�Oa �%a %j O Kk�kh *a �/�/E�O��a &%E�Oa �a &�,�,%a %j Oa ��-�,%a %j [OY��UY hOa  ��a ,a &a  �a j Ob   �a , �a j OkE�O��,�,E�Oa  �%a !%j O�a ",a #-a $,a %&E�O*a &a 'a (�a ) *E�O�[a +\[Z�k\Zi2E�O�a #-a $,a %&E�Ob  �%a ,%�,E�Ob  �%a -%�,E�Oa .�%a /%j Oa 0�%a 1%j Oa  a *�/a ,FUY jE�Oa 2j Y jE�Oa 3j UO�k  �a 4�%a 5%�%a 6%b  %a 7%�%a 8%j Ob  a 9  Hb  �%a :%�,E�Ob  �%a ;%�,E�Oa <�%a =%�%a >%b  %a ?%�%a @%j Y hOa Aj E^ O] a B  a Cj Oa Db  %a E%j Y 	a Fj Y hO�kE�[OY�bOa Gj Oa Hj OPW ?X I Ja K] %a L%j Oa  #*j MO] a Na Okva Pka Qa Ra  SUascr  ��ޭ