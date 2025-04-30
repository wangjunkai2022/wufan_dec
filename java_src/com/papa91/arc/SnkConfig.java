package com.papa91.arc;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes4.dex */
public class SnkConfig {
    static ArrayList<String> gameList = new ArrayList<>();
    static String[] GAME_ID = {"15072a3c8e22f2a141655b2574cd496e", "a4cfbe1235549c7c1a47e36295fb0680", "cba78fb1031c43ae02a20bd90f75f1ad", "bf72a1e6976ce6551152f2da1840981e", "8058674d85516184e5ce43cf310547a9", "18741e0b073706d9dd7225cef974d658", "48cdeb9c53d550471e0fc3456bc8baf4", "974f71e5b7f2142957ab061e582c535c", "9f1eb2524c917e0290108de2d27ef074", "cdbd6b86968b04b8b3b5941c8137adff", "79efa48ade9e0a9f1871947113a76fff", "00736104d3fe9fa33d148ce1808e963e", "31ae3189f3bc5f2b425d08424a50ffda", "982b56a6125309de222f9e4b148c28e7", "aff34a3558f11bdb2f5f7936b09db590", "efa391030de8ddf3f2be762c32bc4ca9", "7f122468ba09f6649131a13ac2b69035", "3d6bea317e41d7c28ac295a99ea055d8", "b8cf10ba0940106706f9110f78690cf3", "233bf594e6dd95d98e4ae1e06ce08f0f", "aaae9f6223e0e77a20953b4c6ee177f9", "ccd10927a749c25afc3a548c32642db7", "699e933398e93d22cd99895352ad4a36", "c97504b4d874c4fa8794c37c3b31a554", "66cf68804870cf7bb2af65a6833361f8", "8280fdb7b2a121fa07d3ea5320044dfe", "a7b3eee0711e173b4378cdbfa79b0a61", "fcb9a43417f70f1ff7c31e47e1c8ee28", "7bae6244e8678c2723e3303b6d44698c", "bd8e5788a7d686e8283125da9f023896", "a8a198d95ff89c3eb77899565868e59b", "c9b99657b142472fce35ec9fd29d5ba4", "41b9b5e73b6d866e2dc9a21f588f1529", "45bf1cf5097c80da732830e720bde7c5", "05bda9b1ed220001fbc3be3f2c6398a1", "900a67ef24cdc42056c67ae2e10a4c0c", "8bcf788e3c8c544bfb29cee47579502c", "4e5890a33ed58fc739313c7378c7a3ad", "f416860309fcc5a86ffbb8768f82dc6d", "a07feee9d5cfc735c1b40192abf981f1", "18029a7ba3b87d9d87885a240bc7d3bd", "4ee78e1884bb90bc3084e595da938e6c", "b453eb264d4fe4fe63cbdb2992d435ab", "7a50e53c91d09e99db63b163bc2468b6", "fbbf5f190f9e8b81a095074c7db3d67f", "92355c2a13044994b928aeaf6ef05754", "fa9117e9a517df05d002c3ae66c54c2f", "e9d7d2c17408dd31888fdb581001a3f3", "4f3df7c5a0146bf3caaecfa1f63686a8", "99accaf43fe56e298ed8bbf8d9155165", "a2d9e870744ebf6e93765b57ce916bb7", "276b2b15270987944f9e9de98f0a7e97", "3ae4a265941a2831312675eef04a79bb", "5ad61f2f1dfde4b8835a61caf221acca", "1afb97d8a58c959917604cad571f05a9", "0ac0b65c541e6091b097b6e39b7669b7", "51c92fb7c6d90fcb23ce0c67158eff71", "59e1d69ec33a56888d93813d726eb8a6", "3a5a9be99118100f93464a2d77d0132f", "0c856d6544dcdbfbec7a8d325670cf53", "5ace383673f230c8f3b720c6a69cf6cd", "8b1141b9f079e7e7e4307df48364d2a9", "75d268d260e4fcd57321faf2e3673d6e", "65a256508d539ad6ee2121ac65ab68fe", "89a3caea4005805942719b43263b3bbb", "e90e65353c327903bdbad355bd85c113", "c5df00f198227bdcf623eec8cc2df951", "5a6a63528c4596845f1f3ce4ca139bbc", "a3a163004bba3f2105cfe6b40f93c0f9", "d8cf0f3d32b8fe6cb97e7f4b290ae2c5", "8e07b366cc943ccbe4ee7cd37cf07777", "90332b709b949fcbc47c021abed8ddf7", "568a7874453faf37fa0025d976928de9", "bb94601a82ac68bca3528cf1f4836cf4", "5e9bd18bbfdb0170206454bc4d8431de", "b652be8089b34b569982cb493ba419b1", "b73a6e4788ec8e37fb6edd47461aa4d4", "455c9bdd33852abeaccbd06829e5e27e", "8d85f9496e2203f3ba14a4bbb3c9793a", "40a06fb264d89f9e423754774e7f0e22", "063b184605d9965d2555e98ebad04082", "f7f14a56d535a990f608735b523202a6", "2c374d6a783debe06f1cb194168b83b5", "b7665243070aa3fb4b2aeabb4617fe79", "f4828baafb5405a9388c31a22f301efb", "b5e05cd5af7ea9212e1e06e238fecd81", "ac1333f9c00183edb8ab784a866b851e", "7a33434bc4229c5f524346f6dc752441", "ce091225b9ffef95a60802cb6c1c452d", "0dd106e969f15549706dd80a43335728", "6ad7f979dfd7898399548491b7c0c94c", "eb9af7ddddc920e75dd522c076c09de0", "089ea812c5dd6bf63552fe39988399fb", "b1c02d8f476f8e61b019aa35507ec259", "fc73d8345cf5877649c4ca49b5c2f52e", "175b9928ee2bb36ddda29550411ba534", "0710e39a8f5e671e5271214400c781b0", "9ef189d022244d08dac501b1904a508a", "0174495a902fc4a0ac126563dafc6736", "f860f83ef8fbbf20379f795eac8dfd46", "fa3fe2d6c5a06f8356acd7c6f73ebedf", "c3355fc75bcfb2c050184bfdf8de528d", "2331b29ad7d4655e8fe29c71200ab13d", "d87adfe4e0699b2d83fbeebefff53e5c", "1ccf385a930e7f10481aa6d75446875d", "bbacbf3b7c35989b2a50eb80484ecce0", "9c90690df57fad869a92410d04095af4", "60f1b1bf60779387ca52b81e9c321536", "f1ece6fb76d099a99cc7c6929849678a", "d9515aee07a99ca6a06edc43d6d0995c", "6966f2fe7c2900e6267f16a3bdbb3e67", "f60de35cb1c561a6c24d4067e9c766aa", "ff0a9bbd40e9f79b7e3559f359bff2b4", "9ede0708d9e85d281cb158b113cdb6e5", "8f769d8cb7318751e67ce6923e52b4d4", "a28de78e04cf9448754824e7b4170f5c", "08ce23b46baff27abd109f95ba42f3b1", "ffe36cdfcbc353d77ede01872c4157d0", "1802008e8b6c813b4d55a3a57d2d0050", "dec178abde09238ae5d9eaf5efa6ab98", "f8307bcea3a0e706aca1ab8fe6c1b5a3", "48e5e46182e6cd60c262c438c679d5e8", "fca30212f553ec2a5a848709085f279d", "bb2028a042f002d0d181b5ce8f8327fd", "ee228d314ca8455dbaf32fd97cafc2cd", "556ad11c4fe7075665161dd00bafac65", "b9b7b26336ea7edfa2ad507f6109cbd6", "5ce1aacd906ce5770ef71c72941129dc", "4a186a858975a8263858a1a84646deb4", "447d0a731f6a053096dbadf1b010168e", "6fe1e36b161c934b6a4947ca83e73ca1", "6459ef6bb3c67e2b064a362665f4d598", "94e527e0fa3c90a2b98af4e04a382a52", "5736de5a6c7e653b6ea6898bb9ff7673", "a0f5aef57912a550cfc7bf52ce9e809e", "5ffcf20cf71ee4e4a8251ad824b75f60", "9e76b4dd9f7c997ad9c1333fecd741a6", "b8356ba2a4b2cf8a7e03e8ed930d5f13"};

    public static String getMD5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i2 = 0; i2 < digest.length; i2++) {
                if (Integer.toHexString(digest[i2] & 255).length() == 1) {
                    stringBuffer.append("0");
                    stringBuffer.append(Integer.toHexString(digest[i2] & 255));
                } else {
                    stringBuffer.append(Integer.toHexString(digest[i2] & 255));
                }
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return "";
        }
    }

    public static boolean isSnkGame(String str) {
        if (gameList.size() <= 0) {
            gameList.addAll(Arrays.asList(GAME_ID));
        }
        return gameList.contains(getMD5(str));
    }
}
