.class public Lcom/papa91/arc/SnkConfig;
.super Ljava/lang/Object;
.source "SnkConfig.java"


# static fields
.field static GAME_ID:[Ljava/lang/String;

.field static gameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 139

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/papa91/arc/SnkConfig;->gameList:Ljava/util/ArrayList;

    const-string v1, "15072a3c8e22f2a141655b2574cd496e"

    const-string v2, "a4cfbe1235549c7c1a47e36295fb0680"

    const-string v3, "cba78fb1031c43ae02a20bd90f75f1ad"

    const-string v4, "bf72a1e6976ce6551152f2da1840981e"

    const-string v5, "8058674d85516184e5ce43cf310547a9"

    const-string v6, "18741e0b073706d9dd7225cef974d658"

    const-string v7, "48cdeb9c53d550471e0fc3456bc8baf4"

    const-string v8, "974f71e5b7f2142957ab061e582c535c"

    const-string v9, "9f1eb2524c917e0290108de2d27ef074"

    const-string v10, "cdbd6b86968b04b8b3b5941c8137adff"

    const-string v11, "79efa48ade9e0a9f1871947113a76fff"

    const-string v12, "00736104d3fe9fa33d148ce1808e963e"

    const-string v13, "31ae3189f3bc5f2b425d08424a50ffda"

    const-string v14, "982b56a6125309de222f9e4b148c28e7"

    const-string v15, "aff34a3558f11bdb2f5f7936b09db590"

    const-string v16, "efa391030de8ddf3f2be762c32bc4ca9"

    const-string v17, "7f122468ba09f6649131a13ac2b69035"

    const-string v18, "3d6bea317e41d7c28ac295a99ea055d8"

    const-string v19, "b8cf10ba0940106706f9110f78690cf3"

    const-string v20, "233bf594e6dd95d98e4ae1e06ce08f0f"

    const-string v21, "aaae9f6223e0e77a20953b4c6ee177f9"

    const-string v22, "ccd10927a749c25afc3a548c32642db7"

    const-string v23, "699e933398e93d22cd99895352ad4a36"

    const-string v24, "c97504b4d874c4fa8794c37c3b31a554"

    const-string v25, "66cf68804870cf7bb2af65a6833361f8"

    const-string v26, "8280fdb7b2a121fa07d3ea5320044dfe"

    const-string v27, "a7b3eee0711e173b4378cdbfa79b0a61"

    const-string v28, "fcb9a43417f70f1ff7c31e47e1c8ee28"

    const-string v29, "7bae6244e8678c2723e3303b6d44698c"

    const-string v30, "bd8e5788a7d686e8283125da9f023896"

    const-string v31, "a8a198d95ff89c3eb77899565868e59b"

    const-string v32, "c9b99657b142472fce35ec9fd29d5ba4"

    const-string v33, "41b9b5e73b6d866e2dc9a21f588f1529"

    const-string v34, "45bf1cf5097c80da732830e720bde7c5"

    const-string v35, "05bda9b1ed220001fbc3be3f2c6398a1"

    const-string v36, "900a67ef24cdc42056c67ae2e10a4c0c"

    const-string v37, "8bcf788e3c8c544bfb29cee47579502c"

    const-string v38, "4e5890a33ed58fc739313c7378c7a3ad"

    const-string v39, "f416860309fcc5a86ffbb8768f82dc6d"

    const-string v40, "a07feee9d5cfc735c1b40192abf981f1"

    const-string v41, "18029a7ba3b87d9d87885a240bc7d3bd"

    const-string v42, "4ee78e1884bb90bc3084e595da938e6c"

    const-string v43, "b453eb264d4fe4fe63cbdb2992d435ab"

    const-string v44, "7a50e53c91d09e99db63b163bc2468b6"

    const-string v45, "fbbf5f190f9e8b81a095074c7db3d67f"

    const-string v46, "92355c2a13044994b928aeaf6ef05754"

    const-string v47, "fa9117e9a517df05d002c3ae66c54c2f"

    const-string v48, "e9d7d2c17408dd31888fdb581001a3f3"

    const-string v49, "4f3df7c5a0146bf3caaecfa1f63686a8"

    const-string v50, "99accaf43fe56e298ed8bbf8d9155165"

    const-string v51, "a2d9e870744ebf6e93765b57ce916bb7"

    const-string v52, "276b2b15270987944f9e9de98f0a7e97"

    const-string v53, "3ae4a265941a2831312675eef04a79bb"

    const-string v54, "5ad61f2f1dfde4b8835a61caf221acca"

    const-string v55, "1afb97d8a58c959917604cad571f05a9"

    const-string v56, "0ac0b65c541e6091b097b6e39b7669b7"

    const-string v57, "51c92fb7c6d90fcb23ce0c67158eff71"

    const-string v58, "59e1d69ec33a56888d93813d726eb8a6"

    const-string v59, "3a5a9be99118100f93464a2d77d0132f"

    const-string v60, "0c856d6544dcdbfbec7a8d325670cf53"

    const-string v61, "5ace383673f230c8f3b720c6a69cf6cd"

    const-string v62, "8b1141b9f079e7e7e4307df48364d2a9"

    const-string v63, "75d268d260e4fcd57321faf2e3673d6e"

    const-string v64, "65a256508d539ad6ee2121ac65ab68fe"

    const-string v65, "89a3caea4005805942719b43263b3bbb"

    const-string v66, "e90e65353c327903bdbad355bd85c113"

    const-string v67, "c5df00f198227bdcf623eec8cc2df951"

    const-string v68, "5a6a63528c4596845f1f3ce4ca139bbc"

    const-string v69, "a3a163004bba3f2105cfe6b40f93c0f9"

    const-string v70, "d8cf0f3d32b8fe6cb97e7f4b290ae2c5"

    const-string v71, "8e07b366cc943ccbe4ee7cd37cf07777"

    const-string v72, "90332b709b949fcbc47c021abed8ddf7"

    const-string v73, "568a7874453faf37fa0025d976928de9"

    const-string v74, "bb94601a82ac68bca3528cf1f4836cf4"

    const-string v75, "5e9bd18bbfdb0170206454bc4d8431de"

    const-string v76, "b652be8089b34b569982cb493ba419b1"

    const-string v77, "b73a6e4788ec8e37fb6edd47461aa4d4"

    const-string v78, "455c9bdd33852abeaccbd06829e5e27e"

    const-string v79, "8d85f9496e2203f3ba14a4bbb3c9793a"

    const-string v80, "40a06fb264d89f9e423754774e7f0e22"

    const-string v81, "063b184605d9965d2555e98ebad04082"

    const-string v82, "f7f14a56d535a990f608735b523202a6"

    const-string v83, "2c374d6a783debe06f1cb194168b83b5"

    const-string v84, "b7665243070aa3fb4b2aeabb4617fe79"

    const-string v85, "f4828baafb5405a9388c31a22f301efb"

    const-string v86, "b5e05cd5af7ea9212e1e06e238fecd81"

    const-string v87, "ac1333f9c00183edb8ab784a866b851e"

    const-string v88, "7a33434bc4229c5f524346f6dc752441"

    const-string v89, "ce091225b9ffef95a60802cb6c1c452d"

    const-string v90, "0dd106e969f15549706dd80a43335728"

    const-string v91, "6ad7f979dfd7898399548491b7c0c94c"

    const-string v92, "eb9af7ddddc920e75dd522c076c09de0"

    const-string v93, "089ea812c5dd6bf63552fe39988399fb"

    const-string v94, "b1c02d8f476f8e61b019aa35507ec259"

    const-string v95, "fc73d8345cf5877649c4ca49b5c2f52e"

    const-string v96, "175b9928ee2bb36ddda29550411ba534"

    const-string v97, "0710e39a8f5e671e5271214400c781b0"

    const-string v98, "9ef189d022244d08dac501b1904a508a"

    const-string v99, "0174495a902fc4a0ac126563dafc6736"

    const-string v100, "f860f83ef8fbbf20379f795eac8dfd46"

    const-string v101, "fa3fe2d6c5a06f8356acd7c6f73ebedf"

    const-string v102, "c3355fc75bcfb2c050184bfdf8de528d"

    const-string v103, "2331b29ad7d4655e8fe29c71200ab13d"

    const-string v104, "d87adfe4e0699b2d83fbeebefff53e5c"

    const-string v105, "1ccf385a930e7f10481aa6d75446875d"

    const-string v106, "bbacbf3b7c35989b2a50eb80484ecce0"

    const-string v107, "9c90690df57fad869a92410d04095af4"

    const-string v108, "60f1b1bf60779387ca52b81e9c321536"

    const-string v109, "f1ece6fb76d099a99cc7c6929849678a"

    const-string v110, "d9515aee07a99ca6a06edc43d6d0995c"

    const-string v111, "6966f2fe7c2900e6267f16a3bdbb3e67"

    const-string v112, "f60de35cb1c561a6c24d4067e9c766aa"

    const-string v113, "ff0a9bbd40e9f79b7e3559f359bff2b4"

    const-string v114, "9ede0708d9e85d281cb158b113cdb6e5"

    const-string v115, "8f769d8cb7318751e67ce6923e52b4d4"

    const-string v116, "a28de78e04cf9448754824e7b4170f5c"

    const-string v117, "08ce23b46baff27abd109f95ba42f3b1"

    const-string v118, "ffe36cdfcbc353d77ede01872c4157d0"

    const-string v119, "1802008e8b6c813b4d55a3a57d2d0050"

    const-string v120, "dec178abde09238ae5d9eaf5efa6ab98"

    const-string v121, "f8307bcea3a0e706aca1ab8fe6c1b5a3"

    const-string v122, "48e5e46182e6cd60c262c438c679d5e8"

    const-string v123, "fca30212f553ec2a5a848709085f279d"

    const-string v124, "bb2028a042f002d0d181b5ce8f8327fd"

    const-string v125, "ee228d314ca8455dbaf32fd97cafc2cd"

    const-string v126, "556ad11c4fe7075665161dd00bafac65"

    const-string v127, "b9b7b26336ea7edfa2ad507f6109cbd6"

    const-string v128, "5ce1aacd906ce5770ef71c72941129dc"

    const-string v129, "4a186a858975a8263858a1a84646deb4"

    const-string v130, "447d0a731f6a053096dbadf1b010168e"

    const-string v131, "6fe1e36b161c934b6a4947ca83e73ca1"

    const-string v132, "6459ef6bb3c67e2b064a362665f4d598"

    const-string v133, "94e527e0fa3c90a2b98af4e04a382a52"

    const-string v134, "5736de5a6c7e653b6ea6898bb9ff7673"

    const-string v135, "a0f5aef57912a550cfc7bf52ce9e809e"

    const-string v136, "5ffcf20cf71ee4e4a8251ad824b75f60"

    const-string v137, "9e76b4dd9f7c997ad9c1333fecd741a6"

    const-string v138, "b8356ba2a4b2cf8a7e03e8ed930d5f13"

    .line 2
    filled-new-array/range {v1 .. v138}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/arc/SnkConfig;->GAME_ID:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    const-string v1, "MD5"

    .line 1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 6
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "0"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 10
    :cond_0
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static isSnkGame(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/arc/SnkConfig;->gameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/arc/SnkConfig;->gameList:Ljava/util/ArrayList;

    sget-object v1, Lcom/papa91/arc/SnkConfig;->GAME_ID:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    sget-object v0, Lcom/papa91/arc/SnkConfig;->gameList:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/papa91/arc/SnkConfig;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
