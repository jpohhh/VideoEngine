FasdUAS 1.101.10   ��   ��    k             l      ��  ��   uo
#   This file is part of Video Engine - A broadcatching system for Mac OS X.
#
#   Video Engine is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 2 of the License, or
#   (at your option) any later version.
#
#   Video Engine is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with Video Engine.  If not, see <http://www.gnu.org/licenses/>.
#
#   The initial developer of the original code is James O'Leary.
#   Portions created by James O'Leary are copyright (C) 2009.
#   All rights reserved.
#   
#	The Breakfast GUI was developed by J. Michael Dockery.
#	Portions created by J. Michael Dockery are copyright (c) 2009.
#	All rights reserved.
#
#  Contributors:
#		James O'Leary, jpo@me.com
#		J. Michael Dockery, dockery.michael@gmail.com
     � 	 	� 
 #       T h i s   f i l e   i s   p a r t   o f   V i d e o   E n g i n e   -   A   b r o a d c a t c h i n g   s y s t e m   f o r   M a c   O S   X . 
 # 
 #       V i d e o   E n g i n e   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 #       i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 #       t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   2   o f   t h e   L i c e n s e ,   o r 
 #       ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 # 
 #       V i d e o   E n g i n e   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 #       b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 #       M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 #       G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 # 
 #       Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 #       a l o n g   w i t h   V i d e o   E n g i n e .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / > . 
 # 
 #       T h e   i n i t i a l   d e v e l o p e r   o f   t h e   o r i g i n a l   c o d e   i s   J a m e s   O ' L e a r y . 
 #       P o r t i o n s   c r e a t e d   b y   J a m e s   O ' L e a r y   a r e   c o p y r i g h t   ( C )   2 0 0 9 . 
 #       A l l   r i g h t s   r e s e r v e d . 
 #       
 # 	 T h e   B r e a k f a s t   G U I   w a s   d e v e l o p e d   b y   J .   M i c h a e l   D o c k e r y . 
 # 	 P o r t i o n s   c r e a t e d   b y   J .   M i c h a e l   D o c k e r y   a r e   c o p y r i g h t   ( c )   2 0 0 9 . 
 # 	 A l l   r i g h t s   r e s e r v e d . 
 # 
 #     C o n t r i b u t o r s : 
 # 	 	 J a m e s   O ' L e a r y ,   j p o @ m e . c o m 
 # 	 	 J .   M i c h a e l   D o c k e r y ,   d o c k e r y . m i c h a e l @ g m a i l . c o m 
   
  
 l     ��������  ��  ��     ��  i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 filepath filePath��    k    �       l     ��  ��    ] W set logFile to (do shell script "defaults read com.Breakfast.engine BreakfastLongLog")     �   �   s e t   l o g F i l e   t o   ( d o   s h e l l   s c r i p t   " d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   B r e a k f a s t L o n g L o g " )      l     ��  ��    { u do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time The osascript was called... << " & (quoted form of logFile)     �   �   d o   s h e l l   s c r i p t   " t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   T h e   o s a s c r i p t   w a s   c a l l e d . . .   < <   "   &   ( q u o t e d   f o r m   o f   l o g F i l e )      r         c          l     !���� ! n      " # " 4    �� $
�� 
cobj $ m    ����  # o     ���� 0 filepath filePath��  ��     m    ��
�� 
TEXT  o      ���� 0 thepath thePath   % & % O   	� ' ( ' k   � ) )  * + * I   ������
�� .miscactv****      � ****��  ��   +  , - , I   �� .��
�� .hookAdd cTrk      @ alis . c     / 0 / l    1���� 1 4    �� 2
�� 
psxf 2 o    ���� 0 thepath thePath��  ��   0 m    ��
�� 
alis��   -  3 4 3 s    " 5 6 5 l    7���� 7 1    ��
�� 
rslt��  ��   6 o      ���� 0 thetrack theTrack 4  8 9 8 V   # 9 : ; : I  / 4�� <��
�� .sysodelanull��� ��� nmbr < m   / 0���� ��   ; =   ' . = > = l  ' , ?���� ? I  ' ,�� @��
�� .coredoexbool        obj  @ o   ' (���� 0 thetrack theTrack��  ��  ��   > m   , -��
�� boovfals 9  A B A l  : :��������  ��  ��   B  C D C l  : :�� E F��   E $  First construct a track name.    F � G G <   F i r s t   c o n s t r u c t   a   t r a c k   n a m e . D  H I H Z   : k J K�� L J A   : C M N M l  : A O���� O c   : A P Q P l  : ? R���� R I  : ?�� S��
�� .sysoexecTEXT���     TEXT S m   : ; T T � U U \ d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   T a g s . S e a s o n��  ��  ��   Q m   ? @��
�� 
long��  ��   N m   A B���� 
 K r   F Y V W V b   F U X Y X m   F I Z Z � [ [  0 Y l  I T \���� \ c   I T ] ^ ] l  I P _���� _ I  I P�� `��
�� .sysoexecTEXT���     TEXT ` m   I L a a � b b \ d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   T a g s . S e a s o n��  ��  ��   ^ m   P S��
�� 
ctxt��  ��   W o      ���� 0 
longseason 
longSeason��   L r   \ k c d c l  \ g e���� e c   \ g f g f l  \ c h���� h I  \ c�� i��
�� .sysoexecTEXT���     TEXT i m   \ _ j j � k k \ d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   T a g s . S e a s o n��  ��  ��   g m   c f��
�� 
ctxt��  ��   d o      ���� 0 
longseason 
longSeason I  l m l l  l l��������  ��  ��   m  n o n Z   l � p q�� r p A   l w s t s l  l u u���� u c   l u v w v l  l s x���� x I  l s�� y��
�� .sysoexecTEXT���     TEXT y m   l o z z � { { ^ d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   T a g s . E p i s o d e��  ��  ��   w m   s t��
�� 
long��  ��   t m   u v���� 
 q r   z � | } | b   z � ~  ~ m   z } � � � � �  0  l  } � ����� � c   } � � � � l  } � ����� � I  } ��� ���
�� .sysoexecTEXT���     TEXT � m   } � � � � � � ^ d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   T a g s . E p i s o d e��  ��  ��   � m   � ���
�� 
ctxt��  ��   } o      ���� 0 longepisode longEpisode��   r r   � � � � � l  � � ����� � c   � � � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � ^ d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   T a g s . E p i s o d e��  ��  ��   � m   � ���
�� 
ctxt��  ��   � o      ���� 0 longepisode longEpisode o  � � � l  � ��� � ���   � @ : (We'll put all this together after we get the show name.)    � � � � t   ( W e ' l l   p u t   a l l   t h i s   t o g e t h e r   a f t e r   w e   g e t   t h e   s h o w   n a m e . ) �  � � � l  � ���������  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � � � get the show name, episode name, tvnn and description from files created by the scraper... (can't use the defaults system because data is unpredictably formatted)    � � � �F   g e t   t h e   s h o w   n a m e ,   e p i s o d e   n a m e ,   t v n n   a n d   d e s c r i p t i o n   f r o m   f i l e s   c r e a t e d   b y   t h e   s c r a p e r . . .   ( c a n ' t   u s e   t h e   d e f a u l t s   s y s t e m   b e c a u s e   d a t a   i s   u n p r e d i c t a b l y   f o r m a t t e d ) �  � � � l  � ��� � ���   � &   figure out where the files are.    � � � � @   f i g u r e   o u t   w h e r e   t h e   f i l e s   a r e . �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � ^ d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   R e s o u r c e P a t h��  ��  ��   � o      ���� 0 resourcepath resourcePath �  � � � l  � ��� � ���   �   construct the paths.    � � � � *   c o n s t r u c t   t h e   p a t h s . �  � � � r   � � � � � b   � � � � � o   � ����� 0 resourcepath resourcePath � m   � � � � � � �  / s h o w n a m e � o      ���� 0 shownamepath showNamePath �  � � � r   � � � � � b   � � � � � o   � ����� 0 resourcepath resourcePath � m   � � � � � � �  / e p i s o d e n a m e � o      ���� 0 namepath namePath �  � � � r   � � � � � b   � � � � � o   � ����� 0 resourcepath resourcePath � m   � � � � � � �  / e p i s o d e d e s c � o      ���� 0 descpath descPath �  � � � r   � � � � � b   � � � � � o   � ����� 0 resourcepath resourcePath � m   � � � � � � � 
 / t v n n � o      ���� 0 tvnnpath tvnnPath �  � � � l  � ��� � ���   �   pull in the info.    � � � � $   p u l l   i n   t h e   i n f o . �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � � 
 c a t   ' � o   � ����� 0 shownamepath showNamePath � m   � � � � � � �  '��  ��  ��   � o      ���� 0 showname showName �  � � � r   � � � � l  � � ���~ � I  � ��} ��|
�} .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � � 
 c a t   ' � o   � ��{�{ 0 namepath namePath � m   � � � � � � �  '�|  �  �~   � o      �z�z 0 episodename episodeName �  � � � r   � � � l  ��y�x � I �w ��v
�w .sysoexecTEXT���     TEXT � b   � � � b   � � � m   � � � � � 
 c a t   ' � o  
�u�u 0 descpath descPath � m   � � �    '�v  �y  �x   � o      �t�t (0 episodedescription episodeDescription �  r  + l '�s�r I '�q�p
�q .sysoexecTEXT���     TEXT b  # b  	
	 m   � 
 c a t   '
 o  �o�o 0 tvnnpath tvnnPath m  " �  '�p  �s  �r   o      �n�n 0 tvnn    l ,,�m�m   N H make a description out of some of the tags that iTunes doesn't support.    � �   m a k e   a   d e s c r i p t i o n   o u t   o f   s o m e   o f   t h e   t a g s   t h a t   i T u n e s   d o e s n ' t   s u p p o r t .  r  ,K b  ,G b  ,C b  ,? b  ,; b  ,7 !  m  ,/"" �##    ( A i r e d :  ! l /6$�l�k$ I /6�j%�i
�j .sysoexecTEXT���     TEXT% m  /2&& �'' Z d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   T a g s . A i r e d�i  �l  �k   m  7:(( �))    o n   o  ;>�h�h 0 tvnn   m  ?B** �++  )   o  CF�g�g (0 episodedescription episodeDescription o      �f�f 0 longdesc LongDesc ,-, l LL�e�d�c�e  �d  �c  - ./. l LL�b01�b  0   Set up the name   1 �22     S e t   u p   t h e   n a m e/ 343 r  Lc565 b  L_787 b  L[9:9 b  LW;<; b  LS=>= o  LO�a�a 0 showname showName> m  OR?? �@@    -   S< o  SV�`�` 0 
longseason 
longSeason: m  WZAA �BB  E8 o  [^�_�_ 0 longepisode longEpisode6 o      �^�^ 0 	trackname 	trackName4 CDC l dd�]�\�[�]  �\  �[  D EFE l dd�ZGH�Z  G   now set the tags   H �II "   n o w   s e t   t h e   t a g sF JKJ r  dmLML o  dg�Y�Y 0 	trackname 	trackNameM n      NON 1  hl�X
�X 
pnamO o  gh�W�W 0 thetrack theTrackK PQP r  nwRSR o  nq�V�V 0 showname showNameS n      TUT 1  rv�U
�U 
pShwU o  qr�T�T 0 thetrack theTrackQ VWV r  x�XYX I x�SZ�R
�S .sysoexecTEXT���     TEXTZ m  x{[[ �\\ \ d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   T a g s . S e a s o n�R  Y n     ]^] 1  ���Q
�Q 
pSeN^ o  ��P�P 0 thetrack theTrackW _`_ r  ��aba I ���Oc�N
�O .sysoexecTEXT���     TEXTc m  ��dd �ee ^ d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   T a g s . E p i s o d e�N  b n      fgf 1  ���M
�M 
pEpNg o  ���L�L 0 thetrack theTrack` hih r  ��jkj o  ���K�K 0 episodename episodeNamek n      lml 1  ���J
�J 
pEpDm o  ���I�I 0 thetrack theTracki non r  ��pqp o  ���H�H 0 longdesc LongDescq n      rsr 1  ���G
�G 
pLdss o  ���F�F 0 thetrack theTracko tut r  ��vwv o  ���E�E 0 longdesc LongDescw n      xyx 1  ���D
�D 
pDesy o  ���C�C 0 thetrack theTracku z�Bz Z  ��{|�A�@{ =  ��}~} l ���?�> c  ����� l ����=�<� I ���;��:
�; .sysoexecTEXT���     TEXT� m  ���� ��� X d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   T a g s . S t i k�:  �=  �<  � m  ���9
�9 
long�?  �>  ~ m  ���8�8 
| r  ����� m  ���7
�7 eVdKkVdT� n      ��� 1  ���6
�6 
pVdK� o  ���5�5 0 thetrack theTrack�A  �@  �B   ( m   	 
���                                                                                  hook   alis    L  Macintosh HD               �a��H+     �
iTunes.app                                                      W�ñY�        ����  	                Applications    �b      ñ��       �  $Macintosh HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��   & ��� l ���4���4  �  	 Clean up   � ���    C l e a n   u p� ��� I ���3��2
�3 .sysoexecTEXT���     TEXT� m  ���� ��� p d e f a u l t s   w r i t e   c o m . B r e a k f a s t . e n g i n e   T a g s . S e a s o n   - i n t   ' 0 '�2  � ��� I ���1��0
�1 .sysoexecTEXT���     TEXT� m  ���� ��� r d e f a u l t s   w r i t e   c o m . B r e a k f a s t . e n g i n e   T a g s . E p i s o d e   - i n t   ' 0 '�0  � ��� I ���/��.
�/ .sysoexecTEXT���     TEXT� m  ���� ��� t d e f a u l t s   w r i t e   c o m . B r e a k f a s t . e n g i n e   T a g s . A i r e d   - s t r i n g   ' - '�.  � ��� I ���-��,
�- .sysoexecTEXT���     TEXT� m  ���� ��� r d e f a u l t s   w r i t e   c o m . B r e a k f a s t . e n g i n e   T a g s . S t i k   - s t r i n g   ' - '�,  � ��+� I ���*��)
�* .sysoexecTEXT���     TEXT� m  ���� ��� r d e f a u l t s   w r i t e   c o m . B r e a k f a s t . e n g i n e   T a g s . t v e n   - s t r i n g   ' - '�)  �+  ��       �(���(  � �'
�' .aevtoappnull  �   � ****� �& �%�$���#
�& .aevtoappnull  �   � ****�% 0 filepath filePath�$  � �"�" 0 filepath filePath� I�!� ���������� T��� Z a�� j z � �� � �� �� �� �� �� � �� � ��
 � ��	�"&(*�?A���[�d��� ������������
�! 
cobj
�  
TEXT� 0 thepath thePath
� .miscactv****      � ****
� 
psxf
� 
alis
� .hookAdd cTrk      @ alis
� 
rslt� 0 thetrack theTrack
� .coredoexbool        obj 
� .sysodelanull��� ��� nmbr
� .sysoexecTEXT���     TEXT
� 
long� 

� 
ctxt� 0 
longseason 
longSeason� 0 longepisode longEpisode� 0 resourcepath resourcePath� 0 shownamepath showNamePath� 0 namepath namePath� 0 descpath descPath� 0 tvnnpath tvnnPath� 0 showname showName�
 0 episodename episodeName�	 (0 episodedescription episodeDescription� 0 tvnn  � 0 longdesc LongDesc� 0 	trackname 	trackName
� 
pnam
� 
pShw
� 
pSeN
� 
pEpN
� 
pEpD
�  
pLds
�� 
pDes
�� eVdKkVdT
�� 
pVdK�#���k/�&E�O��*j O*��/�&j O�EQ�O h�j 
f kj [OY��O�j �&� a a j a &%E` Y a j a &E` Oa j �&� a a j a &%E` Y a j a &E` Oa j E` O_ a %E` O_ a %E` O_ a  %E` !O_ a "%E` #Oa $_ %a %%j E` &Oa '_ %a (%j E` )Oa *_ !%a +%j E` ,Oa -_ #%a .%j E` /Oa 0a 1j %a 2%_ /%a 3%_ ,%E` 4O_ &a 5%_ %a 6%_ %E` 7O_ 7�a 8,FO_ &�a 9,FOa :j �a ;,FOa <j �a =,FO_ )�a >,FO_ 4�a ?,FO_ 4�a @,FOa Aj �&�  a B�a C,FY hUOa Dj Oa Ej Oa Fj Oa Gj Oa Hj  ascr  ��ޭ