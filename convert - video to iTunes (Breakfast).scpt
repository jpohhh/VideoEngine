FasdUAS 1.101.10   ��   ��    k             j     �� �� &0 breakfastshortlog BreakfastShortLog  m     ��
�� 
msng    	  j    �� 
�� $0 breakfastlonglog BreakfastLongLog 
 m    ��
�� 
msng 	     j    �� �� 0 extensionlist ExtensionList  m    ��
�� 
msng      j   	 �� ��  0 calledbyscript CalledByScript  m   	 
��
�� 
msng      j    �� �� 0 	outfolder 	OutFolder  m    ��
�� 
msng      j    �� �� 0 watchfolder WatchFolder  m    ��
�� 
msng      j    �� �� 0 
addeditems 
addedItems  m    ��
�� 
msng      j    �� �� "0 encodingoptions EncodingOptions  m    ��
�� 
msng      j    �� �� 0 	queuepath 	QueuePath  m    ��
�� 
msng     !   j    �� "�� 0 resourcepath resourcePath " m    ��
�� 
msng !  # $ # j     �� %�� 0 encodingfile EncodingFile % m    ��
�� 
msng $  & ' & j   ! #�� (�� 0 apppath AppPath ( m   ! "��
�� 
msng '  ) * ) l     ��������  ��  ��   *  + , + i   $ ' - . - I     �� / 0
�� .facofgetnull���     alis / o      ���� 0 
thisfolder 
thisFolder 0 �� 1��
�� 
flst 1 o      ���� 0 
addeditems 
addedItems��   . k    � 2 2  3 4 3 r      5 6 5 J      7 7  8�� 8 m      9 9 � : :  ��   6 n      ; < ; 1    ��
�� 
txdl < 1    ��
�� 
ascr 4  = > = l   �� ? @��   ? E ? Get our properties from the user defaults. Get the logs first.    @ � A A ~   G e t   o u r   p r o p e r t i e s   f r o m   t h e   u s e r   d e f a u l t s .   G e t   t h e   l o g s   f i r s t . >  B C B r     D E D l    F���� F I   �� G��
�� .sysoexecTEXT���     TEXT G m    	 H H � I I h d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   B r e a k f a s t S h o r t L o g��  ��  ��   E o      ���� &0 breakfastshortlog BreakfastShortLog C  J K J r     L M L l    N���� N I   �� O��
�� .sysoexecTEXT���     TEXT O m     P P � Q Q f d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   B r e a k f a s t L o n g L o g��  ��  ��   M o      ���� $0 breakfastlonglog BreakfastLongLog K  R S R r     + T U T l    % V���� V I    %�� W��
�� .sysoexecTEXT���     TEXT W m     ! X X � Y Y T d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   A p p P a t h��  ��  ��   U o      ���� 0 apppath AppPath S  Z [ Z l  , ,��������  ��  ��   [  \ ] \ l  , ,�� ^ _��   ^ N H First we go after the extensions, because they're the most complicated.    _ � ` ` �   F i r s t   w e   g o   a f t e r   t h e   e x t e n s i o n s ,   b e c a u s e   t h e y ' r e   t h e   m o s t   c o m p l i c a t e d . ]  a b a r   , 3 c d c l  , 1 e���� e I  , 1�� f��
�� .sysoexecTEXT���     TEXT f m   , - g g � h h ` d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   E x t e n s i o n L i s t��  ��  ��   d o      ���� 0 extensiontemp ExtensionTemp b  i j i r   4 9 k l k n  4 7 m n m 1   5 7��
�� 
txdl n 1   4 5��
�� 
ascr l o      ���� 0 olddelimiters oldDelimiters j  o p o r   : ? q r q m   : ; s s � t t  ; r n      u v u 1   < >��
�� 
txdl v 1   ; <��
�� 
ascr p  w x w s   @ J y z y n   @ C { | { 2  A C��
�� 
citm | o   @ A���� 0 extensiontemp ExtensionTemp z o      ���� 0 extensionlist ExtensionList x  } ~ } r   K P  �  o   K L���� 0 olddelimiters oldDelimiters � n      � � � 1   M O��
�� 
txdl � 1   L M��
�� 
ascr ~  � � � l  Q Q�� � ���   �   Log Extension List    � � � � &   L o g   E x t e n s i o n   L i s t �  � � � l  Q Q�� � ���   � � � do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time We will be looking for EXTENSIONS: " & (item 1 of ExtensionList) & " as well as " & (item 2 of ExtensionList) & " >> " & BreakfastLongLog    � � � ��   d o   s h e l l   s c r i p t   " t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   W e   w i l l   b e   l o o k i n g   f o r   E X T E N S I O N S :   "   &   ( i t e m   1   o f   E x t e n s i o n L i s t )   &   "   a s   w e l l   a s   "   &   ( i t e m   2   o f   E x t e n s i o n L i s t )   &   "   > >   "   &   B r e a k f a s t L o n g L o g �  � � � l  Q Q��������  ��  ��   �  � � � l  Q Q�� � ���   � ( " Now the rest of the properties...    � � � � D   N o w   t h e   r e s t   o f   t h e   p r o p e r t i e s . . . �  � � � r   Q ^ � � � b   Q X � � � l  Q V ����� � I  Q V�� ���
�� .sysoexecTEXT���     TEXT � m   Q R � � � � � X d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   O u t F o l d e r��  ��  ��   � m   V W � � � � �  / � o      ���� 0 	outfolder 	OutFolder �  � � � r   _ j � � � l  _ d ����� � I  _ d�� ���
�� .sysoexecTEXT���     TEXT � m   _ ` � � � � � d d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   E n c o d i n g O p t i o n s��  ��  ��   � o      ���� "0 encodingoptions EncodingOptions �  � � � r   k v � � � l  k p ����� � I  k p�� ���
�� .sysoexecTEXT���     TEXT � m   k l � � � � � X d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   Q u e u e P a t h��  ��  ��   � o      ���� 0 	queuepath 	QueuePath �  � � � l  w w��������  ��  ��   �  � � � l  w w�� � ���   � Q K Now we set our own default to let the app know we want it to do the deal.     � � � � �   N o w   w e   s e t   o u r   o w n   d e f a u l t   t o   l e t   t h e   a p p   k n o w   w e   w a n t   i t   t o   d o   t h e   d e a l .   �  � � � I  w |�� ���
�� .sysoexecTEXT���     TEXT � m   w x � � � � � � d e f a u l t s   w r i t e   c o m . B r e a k f a s t . e n g i n e   C a l l e d B y S c r i p t   - b o o l e a n   ' y e s '��   �  � � � l  } }��������  ��  ��   �  � � � l  } }��������  ��  ��   �  ��� � Q   }� � ��� � k   �� � �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 6 0log that an event occured to trigger this script    � � � � ` l o g   t h a t   a n   e v e n t   o c c u r e d   t o   t r i g g e r   t h i s   s c r i p t �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � P t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   � l  � � ����� � n   � � � � � m   � ���
�� 
nmbr � n   � � � � � 2  � ���
�� 
cobj � o   � ����� 0 
addeditems 
addedItems��  ��   � m   � � � � � � �     i t e m s   a d d e d   > >   � o   � ����� &0 breakfastshortlog BreakfastShortLog��   �  � � � l  � ��� � ���   � 8 2iterate through all the files added to this folder    � � � � d i t e r a t e   t h r o u g h   a l l   t h e   f i l e s   a d d e d   t o   t h i s   f o l d e r �  � � � r   � � � � � m   � �����  � o      ���� 0 i   �  � � � W   �� � � � k   �� � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� 0 
addeditems 
addedItems � o      ���� 0 thisitem ThisItem �  � � � r   � � � � � l  � � ����� � I  � �� ��~
� .sysonfo4asfe        file � o   � ��}�} 0 thisitem ThisItem�~  ��  ��   � l      ��|�{ � o      �z�z 0 iteminfo ItemInfo�|  �{   �  � � � l  � ��y � ��y   � 0 *log that we're processing the current item    � � � � T l o g   t h a t   w e ' r e   p r o c e s s i n g   t h e   c u r r e n t   i t e m �  � � � I  � ��x 
�x .sysoexecTEXT���     TEXT  b   � � b   � � b   � � m   � � �		 f t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P R O C E S S I N G   l  � �
�w�v
 n   � � 1   � ��u
�u 
strq l  � ��t�s n   � � 1   � ��r
�r 
psxp o   � ��q�q 0 thisitem ThisItem�t  �s  �w  �v   m   � � �    a s   w e l l   a s   l  � ��p�o n   � � 1   � ��n
�n 
pnam o   � ��m�m 0 iteminfo ItemInfo�p  �o   �l�k
�l 
rtyp b   � � b   � � m   � ��j
�j 
TEXT m   � � �    > >   o   � ��i�i $0 breakfastlonglog BreakfastLongLog�k   �  l  � ��h�g�f�h  �g  �f    l  � ��e !�e    P Jcheck to make sure the item has finished moving before we start processing   ! �"" � c h e c k   t o   m a k e   s u r e   t h e   i t e m   h a s   f i n i s h e d   m o v i n g   b e f o r e   w e   s t a r t   p r o c e s s i n g #$# r   � �%&% n   � �'(' 1   � ��d
�d 
ptsz( o   � ��c�c 0 iteminfo ItemInfo& o      �b�b 0 oldsize oldSize$ )*) I  � ��a+�`
�a .sysodelanull��� ��� nmbr+ m   � ��_�_ �`  * ,-, r   � ./. n   � �010 1   � ��^
�^ 
ptsz1 o   � ��]�] 0 iteminfo ItemInfo/ o      �\�\ 0 newsize newSize- 232 V  1454 k  	,66 787 I 	�[9�Z
�[ .sysoexecTEXT���     TEXT9 b  	:;: m  	<< �== � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   T h r o t t l i n g   p r o c e s s i n g   u n t i l   m o v i n g   h a s   s e t t l e d .   > >  ; o  �Y�Y $0 breakfastlonglog BreakfastLongLog�Z  8 >?> l �X@A�X  @   Get the file size.   A �BB &   G e t   t h e   f i l e   s i z e .? CDC r  EFE n  GHG 1  �W
�W 
ptszH o  �V�V 0 iteminfo ItemInfoF o      �U�U 0 oldsize oldSizeD IJI I $�TK�S
�T .sysodelanull��� ��� nmbrK m   �R�R �S  J LML l %%�QNO�Q  N 8 2 Sample the size again after delay for comparison.   O �PP d   S a m p l e   t h e   s i z e   a g a i n   a f t e r   d e l a y   f o r   c o m p a r i s o n .M Q�PQ r  %,RSR n  %*TUT 1  &*�O
�O 
ptszU o  %&�N�N 0 iteminfo ItemInfoS o      �M�M 0 newsize newSize�P  5 > VWV o  �L�L 0 newsize newSizeW o  �K�K 0 oldsize oldSize3 XYX l 22�J�I�H�J  �I  �H  Y Z[Z l 22�G\]�G  \ � zCheck if one of the added items is a folder, if it is get all the files in that folder too, and add them to our item array   ] �^^ � C h e c k   i f   o n e   o f   t h e   a d d e d   i t e m s   i s   a   f o l d e r ,   i f   i t   i s   g e t   a l l   t h e   f i l e s   i n   t h a t   f o l d e r   t o o ,   a n d   a d d   t h e m   t o   o u r   i t e m   a r r a y[ _`_ Z  2�ab�F�Ea l 2;c�D�Cc = 2;ded l 27f�B�Af n  27ghg 1  37�@
�@ 
kindh l 23i�?�>i o  23�=�= 0 iteminfo ItemInfo�?  �>  �B  �A  e m  7:jj �kk  F o l d e r�D  �C  b k  >�ll mnm I >K�<o�;
�< .sysoexecTEXT���     TEXTo b  >Gpqp m  >Arr �ss � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   T h i s   i s   a   f o l d e r ,   s o   c h e c k   w h a t \ ' s   i n s i d e   > >  q o  AF�:�: $0 breakfastlonglog BreakfastLongLog�;  n t�9t O  L�uvu k  R�ww xyx r  Rbz{z l R`|�8�7| n  R`}~} m  \`�6
�6 
nmbr~ n R\� 2 X\�5
�5 
cobj� 4  RX�4�
�4 
cfol� o  VW�3�3 0 thisitem ThisItem�8  �7  { o      �2�2 0 
itemnumber 
ItemNumbery ��� I cv�1��0
�1 .sysoexecTEXT���     TEXT� b  cr��� b  cl��� b  ch��� m  cf�� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   N u m b e r   o f   i t e m s   i n   f o l d e r ?  � o  fg�/�/ 0 
itemnumber 
ItemNumber� m  hk�� ���    > >  � o  lq�.�. $0 breakfastlonglog BreakfastLongLog�0  � ��-� Y  w���,���+� k  ���� ��� r  ����� n ����� 4  ���*�
�* 
cobj� o  ���)�) 0 j  � 4  ���(�
�( 
cfol� o  ���'�' 0 thisitem ThisItem� o      �&�& 0 
folderitem 
FolderItem� ��� r  ����� b  ����� o  ���%�% 0 
addeditems 
addedItems� l ����$�#� c  ����� o  ���"�" 0 
folderitem 
FolderItem� m  ���!
�! 
alis�$  �#  � o      � �  0 
addeditems 
addedItems� ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� \ t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   A d d e d  � l ������ n  ����� 1  ���
� 
strq� l ������ n  ����� 1  ���
� 
psxp� l ������ c  ����� o  ���� 0 
folderitem 
FolderItem� m  ���
� 
alis�  �  �  �  �  �  � m  ���� ���    > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�  � ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� l t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   N o w   t h e r e   a r e  � n  ����� m  ���
� 
nmbr� n ����� 2 ���
� 
cobj� o  ���� 0 
addeditems 
addedItems� m  ���� ��� 2   i t e m s   i n   a d d e d _ i t e m s   > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�  �  �, 0 j  � m  z{�� � o  {|�
�
 0 
itemnumber 
ItemNumber�+  �-  v m  LO���                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �9  �F  �E  ` ��� l ���	���	  �  �  � ��� l ������  � � �check to make sure that the extension is in the allow list, and that the file hasn't been processed already (label color isn't green)   � ���
 c h e c k   t o   m a k e   s u r e   t h a t   t h e   e x t e n s i o n   i s   i n   t h e   a l l o w   l i s t ,   a n d   t h a t   t h e   f i l e   h a s n ' t   b e e n   p r o c e s s e d   a l r e a d y   ( l a b e l   c o l o r   i s n ' t   g r e e n )� ��� O  �3��� k  �2�� ��� l ������  � . (check if the label is green for the file   � ��� P c h e c k   i f   t h e   l a b e l   i s   g r e e n   f o r   t h e   f i l e� ��� Z  �2����� > ����� c  ����� l ������ l ���� ��� n  ����� 1  ����
�� 
labi� o  ������ 0 thisitem ThisItem�   ��  �  �  � m  ����
�� 
long� m  ������ � k  ��� ��� l ��������  � ) #log that we passed the color filter   � ��� F l o g   t h a t   w e   p a s s e d   t h e   c o l o r   f i l t e r� ��� I ������
�� .sysoexecTEXT���     TEXT� b  ����� m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P A S S E D   l a b e l   c o l o r   f i l t e r   > >  � o  ������ $0 breakfastlonglog BreakfastLongLog��  � ��� l ������  � 9 3check if the file has one of our desired extensions   � ��� f c h e c k   i f   t h e   f i l e   h a s   o n e   o f   o u r   d e s i r e d   e x t e n s i o n s� ���� Z  ������ l ������ E    l ���� o  ���� 0 extensionlist ExtensionList��  ��   l ���� n   1  	��
�� 
nmxt l 	���� o  	���� 0 iteminfo ItemInfo��  ��  ��  ��  ��  ��  � k  
 	 l ��
��  
 - 'log that we passed the extension filter    � N l o g   t h a t   w e   p a s s e d   t h e   e x t e n s i o n   f i l t e r	  I ����
�� .sysoexecTEXT���     TEXT b   m   � � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P A S S E D   e x t e n s i o n   f i l t e r   > >   o  ���� $0 breakfastlonglog BreakfastLongLog��    l ��������  ��  ��    l ����   r lneed some way to only invoke HandbrakeCLI if the file is in the extension list, otherwise the script crashes    � � n e e d   s o m e   w a y   t o   o n l y   i n v o k e   H a n d b r a k e C L I   i f   t h e   f i l e   i s   i n   t h e   e x t e n s i o n   l i s t ,   o t h e r w i s e   t h e   s c r i p t   c r a s h e s  r  " m   ����  o      ���� 0 doencode DoEncode   l ##��������  ��  ��    !"! l ##��#$��  # % generate input path, and log it   $ �%% > g e n e r a t e   i n p u t   p a t h ,   a n d   l o g   i t" &'& r  #.()( l #,*����* n  #,+,+ 1  (,��
�� 
strq, l #(-����- n  #(./. 1  $(��
�� 
psxp/ o  #$���� 0 thisitem ThisItem��  ��  ��  ��  ) o      ���� 0 
sourcename  ' 010 I /B��2��
�� .sysoexecTEXT���     TEXT2 b  />343 b  /8565 b  /4787 m  /299 �:: j t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   S o u r c e   f i l e :  8 o  23���� 0 
sourcename  6 m  47;; �<<    > >  4 o  8=���� $0 breakfastlonglog BreakfastLongLog��  1 =>= I CV��?��
�� .sysoexecTEXT���     TEXT? b  CR@A@ b  CLBCB b  CHDED m  CFFF �GG z t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F i l e   p a s s e d   f i l t e r s ,  E o  FG���� 0 
sourcename  C m  HKHH �II (   i s   b e i n g   q u e u e d   > >  A o  LQ���� &0 breakfastshortlog BreakfastShortLog��  > JKJ l WW��������  ��  ��  K LML l WW��NO��  N � �generate output path by removing the extension from the input filename, add the prefix of the directory to put it in, and adding m4v at the end   O �PP g e n e r a t e   o u t p u t   p a t h   b y   r e m o v i n g   t h e   e x t e n s i o n   f r o m   t h e   i n p u t   f i l e n a m e ,   a d d   t h e   p r e f i x   o f   t h e   d i r e c t o r y   t o   p u t   i t   i n ,   a n d   a d d i n g   m 4 v   a t   t h e   e n dM QRQ l WW��ST��  S 8 2 generate a log output path similarly (txt at end)   T �UU d   g e n e r a t e   a   l o g   o u t p u t   p a t h   s i m i l a r l y   ( t x t   a t   e n d )R VWV r  WjXYX c  WhZ[Z l Wd\����\ l Wd]����] n  Wd^_^ 1  `d��
�� 
rvse_ n  W``a` 2  \`��
�� 
cha a l W\b����b n  W\cdc 1  X\��
�� 
pnamd l WXe����e o  WX���� 0 iteminfo ItemInfo��  ��  ��  ��  ��  ��  ��  ��  [ m  dg��
�� 
TEXTY o      ���� 0 outfilename OutFilenameW fgf r  k~hih l k|j����j I k|����k
�� .sysooffslong    ��� null��  k ��lm
�� 
psofl m  ornn �oo  .m ��p��
�� 
psinp o  uv���� 0 outfilename OutFilename��  ��  ��  i o      ���� 0 x  g qrq r  �sts l �u����u n  �vwv 7 ����xy
�� 
ctxtx l ��z����z [  ��{|{ o  ������ 0 x  | m  ������ ��  ��  y m  ��������w o  ����� 0 outfilename OutFilename��  ��  t o      ���� 0 outfilename OutFilenamer }~} r  ��� c  ����� l �������� l �������� n  ����� 1  ����
�� 
rvse� n  ����� 2  ����
�� 
cha � o  ������ 0 outfilename OutFilename��  ��  ��  ��  � m  ����
�� 
TEXT� o      ���� 0 outfilename OutFilename~ ��� r  ����� l �������� n  ����� 1  ����
�� 
strq� l �������� b  ����� b  ����� l �������� o  ������ 0 	outfolder 	OutFolder��  ��  � l �������� o  ������ 0 outfilename OutFilename��  ��  � m  ���� ���  . t x t��  ��  ��  ��  � o      ���� 0 
outlogname 
OutLogname� ��� r  ����� l �������� n  ����� 1  ����
�� 
strq� l �������� b  ����� b  ����� l �������� o  ������ 0 	outfolder 	OutFolder��  ��  � l �������� o  ������ 0 outfilename OutFilename��  ��  � m  ���� ���  . m 4 v��  ��  ��  ��  � o      ���� 0 
outputpath 
OutputPath� ��� l ����������  ��  ��  � ��� l ��������  � 4 .log the encode output and the log output paths   � ��� \ l o g   t h e   e n c o d e   o u t p u t   a n d   t h e   l o g   o u t p u t   p a t h s� ��� I �����~
� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� r t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   E n c o d e   g o i n g   t o :  � o  ���}�} 0 
outputpath 
OutputPath� m  ���� ���    > >  � o  ���|�| $0 breakfastlonglog BreakfastLongLog�~  � ��� I ���{��z
�{ .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� l t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   L o g   g o i n g   t o :  � o  ���y�y 0 
outlogname 
OutLogname� m  ���� ���    > >  � o  ���x�x $0 breakfastlonglog BreakfastLongLog�z  � ��� l ���w�v�u�w  �v  �u  � ��� l ���t���t  � ` Zcolor the file we're about to convert green so the script recognizes it as processed later   � ��� � c o l o r   t h e   f i l e   w e ' r e   a b o u t   t o   c o n v e r t   g r e e n   s o   t h e   s c r i p t   r e c o g n i z e s   i t   a s   p r o c e s s e d   l a t e r� ��s� O  �
��� r  �	��� m  ���r�r � n      ��� 1  �q
�q 
labi� 4  ��p�
�p 
cobj� o  �o�o 0 thisitem ThisItem� m  �����                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �s  ��  � k  �� ��� l �n���n  � c ]we didn't pass the extension filter, signal the encode code to be blocked and log the failure   � ��� � w e   d i d n ' t   p a s s   t h e   e x t e n s i o n   f i l t e r ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r e� ��� r  ��� m  �m�m  � o      �l�l 0 doencode DoEncode� ��k� I �j��i
�j .sysoexecTEXT���     TEXT� b  ��� m  �� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F A I L E D   e x t e n s i o n   f i l t e r   > >  � o  �h�h $0 breakfastlonglog BreakfastLongLog�i  �k  ��  �  � k  !2�� ��� l !!�g���g  � � �we didn't pass the label filter (the file was already processed or someone is too organized), signal the encode code to be blocked and log the failure   � ���, w e   d i d n ' t   p a s s   t h e   l a b e l   f i l t e r   ( t h e   f i l e   w a s   a l r e a d y   p r o c e s s e d   o r   s o m e o n e   i s   t o o   o r g a n i z e d ) ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r e� ��� r  !$��� m  !"�f�f  � o      �e�e 0 doencode DoEncode� ��d� I %2�c��b
�c .sysoexecTEXT���     TEXT� b  %.��� m  %(�� ��� | t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F A I L E D   l a b e l   c o l o r   > >  � o  (-�a�a $0 breakfastlonglog BreakfastLongLog�b  �d  �  � m  �����                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l 44�`�_�^�`  �_  �^  � ��� l 44�]� �]  � ' !check if we're supposed to encode     � B c h e c k   i f   w e ' r e   s u p p o s e d   t o   e n c o d e�  Z  4��\�[ =  47 o  45�Z�Z 0 doencode DoEncode m  56�Y�Y  k  :� 	
	 l ::�X�X   � �dump parsed filenames to queue.txt, I tried writing CSV for easier editing but this doesn't work because CSV parses the , in encoding options as a separate field    �B d u m p   p a r s e d   f i l e n a m e s   t o   q u e u e . t x t ,   I   t r i e d   w r i t i n g   C S V   f o r   e a s i e r   e d i t i n g   b u t   t h i s   d o e s n ' t   w o r k   b e c a u s e   C S V   p a r s e s   t h e   ,   i n   e n c o d i n g   o p t i o n s   a s   a   s e p a r a t e   f i e l d
  I :g�W�V
�W .sysoexecTEXT���     TEXT b  :c b  :] b  :Y b  :U b  :Q b  :K b  :G b  :C  b  :?!"! m  :=## �$$ 
 e c h o  " o  =>�U�U 0 
sourcename    m  ?B%% �&&  \ ; o  CF�T�T 0 
outputpath 
OutputPath m  GJ'' �((  \ ; o  KP�S�S "0 encodingoptions EncodingOptions m  QT)) �**  \ ; o  UX�R�R 0 
outlogname 
OutLogname m  Y\++ �,,    > >   o  ]b�Q�Q 0 	queuepath 	QueuePath�V   -.- l hh�P�O�N�P  �O  �N  . /0/ l hh�M12�M  1 s mset isHandbrakeRunning to do shell script "ps ax | grep HandBrakeCLI | grep -v grep | wc -l | cut -d ' ' -f8"   2 �33 � s e t   i s H a n d b r a k e R u n n i n g   t o   d o   s h e l l   s c r i p t   " p s   a x   |   g r e p   H a n d B r a k e C L I   |   g r e p   - v   g r e p   |   w c   - l   |   c u t   - d   '   '   - f 8 "0 454 l hh�L67�L  6 N H isHandbrakeRunning returns the number of HandBrakeCLI processes running   7 �88 �   i s H a n d b r a k e R u n n i n g   r e t u r n s   t h e   n u m b e r   o f   H a n d B r a k e C L I   p r o c e s s e s   r u n n i n g5 9:9 l hh�K�J�I�K  �J  �I  : ;<; l hh�H�G�F�H  �G  �F  < =>= Z  h�?@�EA? = hrBCB I  hp�DD�C�D 0 	isrunning 	isRunningD E�BE m  ilFF �GG  B r e a k f a s t�B  �C  C m  pq�A
�A boovfals@ k  u�HH IJI l uu�@KL�@  K W Qwe're not currently encoding, log it, give the encoding script a kick in the arse   L �MM � w e ' r e   n o t   c u r r e n t l y   e n c o d i n g ,   l o g   i t ,   g i v e   t h e   e n c o d i n g   s c r i p t   a   k i c k   i n   t h e   a r s eJ NON I u��?P�>
�? .sysoexecTEXT���     TEXTP b  u~QRQ m  uxSS �TT � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   B r e a k f a s t   N O T   r e p o r t i n g   r u n n i n g ,   s o   a s k i n g   e n c o d e r   t o   s t a r t . . .   > >  R o  x}�=�= $0 breakfastlonglog BreakfastLongLog�>  O UVU r  ��WXW l ��Y�<�;Y n  ��Z[Z 1  ���:
�: 
strq[ o  ���9�9 0 
outputpath 
OutputPath�<  �;  X o      �8�8 0 
outputpath 
OutputPathV \]\ I ���7^�6
�7 .sysoexecTEXT���     TEXT^ b  ��_`_ m  ��aa �bb r d e f a u l t s   w r i t e   c o m . B r e a k f a s t . e n g i n e   E n c o d i n g F i l e   - s t r i n g  ` l ��c�5�4c c  ��ded o  ���3�3 0 
outputpath 
OutputPathe m  ���2
�2 
TEXT�5  �4  �6  ] fgf l ���1hi�1  h  
 Log that.   i �jj    L o g   t h a t .g klk I ���0m�/
�0 .sysoexecTEXT���     TEXTm b  ��non m  ��pp �qq � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   w e   j u s t   w r o t e   t h e   O u t p u t P a t h . . .   s h o u l d   s t a r t   n o w   > >  o o  ���.�. $0 breakfastlonglog BreakfastLongLog�/  l rsr l ���-�,�+�-  �,  �+  s tut l ���*vw�*  v   Send it to Breakfast   w �xx *   S e n d   i t   t o   B r e a k f a s tu y�)y O  ��z{z k  ��|| }~} I ���(�'�&
�( .aevtoappnull  �   � ****�'  �&  ~ �% I ���$�#�"
�$ .miscactvnull��� ��� obj �#  �"  �%  { 4  ���!�
�! 
capp� o  ��� �  0 apppath AppPath�)  �E  A k  ���� ��� l ������  � ( "already encoding, quietly log this   � ��� D a l r e a d y   e n c o d i n g ,   q u i e t l y   l o g   t h i s� ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   B r e a k f a s t   i s   r e p o r t i n g   r u n n i n g ,   s o   n o t   a s k i n g   e n c o d e r   t o   s t a r t . . .   > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�  �  > ��� l ������  �  �  �  �\  �[   ��� l ������  �  �  � ��� l ������  � I Cnote for the loop that we passed through index 1 of the added files   � ��� � n o t e   f o r   t h e   l o o p   t h a t   w e   p a s s e d   t h r o u g h   i n d e x   1   o f   t h e   a d d e d   f i l e s� ��� r  ����� [  ����� o  ���� 0 i  � m  ���� � o      �� 0 i  �   � ?   � ���� o   � ��� 0 i  � l  � ����� l  � ����
� n   � ���� m   � ��	
�	 
nmbr� n   � ���� 2  � ��
� 
cobj� o   � ��� 0 
addeditems 
addedItems�  �
  �  �   � ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   E x i t e d   r e p e a t   l o o p ,   a l l   f i l e s   s h o u l d   b e   h a n d l e d   > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�  �   � R      ��� 
� .ascrerr ****      � ****�  �   ��  ��   , ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � ( " isRunning created by Nando Vieira   � ��� D   i s R u n n i n g   c r e a t e d   b y   N a n d o   V i e i r a� ��� l     ������  � "  http://simplesideias.com.br   � ��� 8   h t t p : / / s i m p l e s i d e i a s . c o m . b r� ���� i   ( +��� I      ������� 0 	isrunning 	isRunning� ���� o      ���� 0 appname appName��  ��  � O     ��� k    �� ��� r    ��� E    ��� l   	������ n    	��� 1    	��
�� 
pnam� 2   ��
�� 
prcs��  ��  � o   	 
���� 0 appname appName� o      ���� 0 isapprunning isAppRunning� ���� L    �� o    ���� 0 isapprunning isAppRunning��  � m     ���                                                                                  sevs   alis    �  Macintosh HD               �a��H+     �System Events.app                                                �	�n��        ����  	                CoreServices    �b      �oB.       �   Q   P  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��       ������������������������  � ������������������������������ &0 breakfastshortlog BreakfastShortLog�� $0 breakfastlonglog BreakfastLongLog�� 0 extensionlist ExtensionList��  0 calledbyscript CalledByScript�� 0 	outfolder 	OutFolder�� 0 watchfolder WatchFolder�� 0 
addeditems 
addedItems�� "0 encodingoptions EncodingOptions�� 0 	queuepath 	QueuePath�� 0 resourcepath resourcePath�� 0 encodingfile EncodingFile�� 0 apppath AppPath
�� .facofgetnull���     alis�� 0 	isrunning 	isRunning� ��� @ $ H O M E / L i b r a r y / L o g s / B r e a k f a s t . l o g� ��� L $ H O M E / L i b r a r y / L o g s / B r e a k f a s t _ d e b u g . l o g� ����� �  ��� ���  a v i� ���  m k v
�� 
msng� ��� : / U s e r s / m i k e / M o v i e s / E n g i n e O u t /
�� 
msng
�� 
msng� ��� 0 - Z   ' i P h o n e   &   i P o d   T o u c h '� ��� � / U s e r s / m i k e / B r e a k f a s t / b u i l d / R e l e a s e / B r e a k f a s t . a p p / C o n t e n t s / R e s o u r c e s / q u e u e . t x t
�� 
msng
�� 
msng� ��� b / U s e r s / m i k e / B r e a k f a s t / b u i l d / R e l e a s e / B r e a k f a s t . a p p� �� .��������
�� .facofgetnull���     alis�� 0 
thisfolder 
thisFolder�� ������
�� 
flst�� 0 
addeditems 
addedItems��  � �������������������������������������� 0 
thisfolder 
thisFolder�� 0 
addeditems 
addedItems�� 0 extensiontemp ExtensionTemp�� 0 olddelimiters oldDelimiters�� 0 i  �� 0 thisitem ThisItem�� 0 iteminfo ItemInfo�� 0 oldsize oldSize�� 0 newsize newSize�� 0 
itemnumber 
ItemNumber�� 0 j  �� 0 
folderitem 
FolderItem�� 0 doencode DoEncode�� 0 
sourcename  �� 0 outfilename OutFilename�� 0 x  �� 0 
outlogname 
OutLogname�� 0 
outputpath 
OutputPath� V 9���� H�� P X g s�� � � � � � ����� �����������������<��jr��������������������9;FH������n����������������#%')+F��Sap������������
�� 
ascr
�� 
txdl
�� .sysoexecTEXT���     TEXT
�� 
citm
�� 
cobj
�� 
nmbr
�� .sysonfo4asfe        file
�� 
psxp
�� 
strq
�� 
pnam
�� 
rtyp
�� 
TEXT
�� 
ptsz
�� .sysodelanull��� ��� nmbr
�� 
kind
�� 
cfol
�� 
alis
�� 
labi
�� 
long�� 
�� 
nmxt
�� 
cha 
�� 
rvse
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
ctxt�� 0 	isrunning 	isRunning
�� 
capp
�� .aevtoappnull  �   � ****
�� .miscactvnull��� ��� obj ��  ��  ����kv��,FO�j Ec   O�j Ec  O�j Ec  O�j E�O��,E�O���,FO��-EQc  O���,FO�j �%Ec  O�j Ec  O�j Ec  O�j Oz�a -a ,%a %b   %j OkE�OHh��a -a ,�a �/E�O�j E�Oa �a ,a ,%a %�a ,%a a a %b  %l O�a ,E�Omj O�a ,E�O /h��a b  %j O�a ,E�Omj O�a ,E�[OY��O�a ,a    �a !b  %j Oa " �*a #�/a -a ,E�Oa $�%a %%b  %j O ak�kh 
*a #�/a �/E�O��a &&%E�Oa '�a &&a ,a ,%a (%b  %j Oa )�a -a ,%a *%b  %j [OY��UY hOa "O�a +,a ,&a -.a .b  %j Ob  �a /, �a 0b  %j OkE�O�a ,a ,E�Oa 1�%a 2%b  %j Oa 3�%a 4%b   %j O�a ,a 5-a 6,a &E�O*a 7a 8a 9�a : ;E�O�[a <\[Z�k\Zi2E�O�a 5-a 6,a &E�Ob  �%a =%a ,E^ Ob  �%a >%a ,E^ Oa ?] %a @%b  %j Oa A] %a B%b  %j Oa " a -*a �/a +,FUY jE�Oa Cb  %j Y jE�Oa Db  %j UO�k  �a E�%a F%] %a G%b  %a H%] %a I%b  %j O*a Jk+ Kf  Va Lb  %j O] a ,E^ Oa M] a &%j Oa Nb  %j O*a Ob  / *j PO*j QUY a Rb  %j OPY hO�kE�[OY��Oa Sb  %j W X T Uh� ������������� 0 	isrunning 	isRunning�� ����� �  ���� 0 appname appName��  � ������ 0 appname appName�� 0 isapprunning isAppRunning� �����
�� 
prcs
�� 
pnam�� � *�-�,�E�O�U ascr  ��ޭ