.class public final enum Lcom/join/mgps/enums/ConstantIntEnum;
.super Ljava/lang/Enum;
.source "ConstantIntEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/enums/ConstantIntEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum AVG:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum CHOICENESS:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum CONSOLEGAME:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum DATA:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum DC:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum FBA:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum FC:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum FEATURED_ONLINE:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum FIGHT:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum GAMEOL:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum GBA:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum GBA_ENHANCE:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum GBC:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum H5:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum LARGE_SINGLE:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum MD:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum MGAME:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum MOD:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum N64:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum NDS:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum NET:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum OBB:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum OBBDATA:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum ONS:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum PS:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum PS2:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum PSP:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum SFC:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum VA32:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum VA64:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum WORLD:Lcom/join/mgps/enums/ConstantIntEnum;

.field public static final enum WSC:Lcom/join/mgps/enums/ConstantIntEnum;


# instance fields
.field private nickName:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1
    new-instance v0, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v1, "GAMEOL"

    const/4 v2, 0x0

    const/4 v3, 0x7

    const-string v4, "\u7f51\u6e38"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->GAMEOL:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v1, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v4, "CONSOLEGAME"

    const/4 v5, 0x1

    const/16 v6, 0x17

    const-string v7, "\u5355\u673a"

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->CONSOLEGAME:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v4, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v7, "FBA"

    const/4 v8, 0x2

    const/16 v9, 0x1f

    const-string v10, "\u8857\u673a"

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v7, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v10, "NDS"

    const/4 v11, 0x3

    const/16 v12, 0x20

    invoke-direct {v7, v10, v11, v12, v10}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v10, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v13, "GBA"

    const/4 v14, 0x4

    const/16 v15, 0x21

    invoke-direct {v10, v13, v14, v15, v13}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v13, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v15, "PSP"

    const/4 v14, 0x5

    const/16 v11, 0x22

    invoke-direct {v13, v15, v14, v11, v15}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v11, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v15, "FC"

    const/4 v14, 0x6

    const/16 v8, 0x23

    invoke-direct {v11, v15, v14, v8, v15}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v8, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v15, "AVG"

    const/16 v14, 0x27

    invoke-direct {v8, v15, v3, v14, v15}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->AVG:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 2
    new-instance v14, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v15, "FIGHT"

    const/16 v3, 0x8

    const/16 v5, 0x29

    invoke-direct {v14, v15, v3, v5, v15}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lcom/join/mgps/enums/ConstantIntEnum;->FIGHT:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v5, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v15, "SFC"

    const/16 v3, 0x9

    const/16 v2, 0x2b

    invoke-direct {v5, v15, v3, v2, v15}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v2, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v15, "WORLD"

    const/16 v3, 0xa

    const/16 v12, 0x2c

    invoke-direct {v2, v15, v3, v12, v15}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->WORLD:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v12, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v15, "NET"

    const/16 v3, 0xb

    const/16 v9, 0x2d

    const-string v6, "NET"

    invoke-direct {v12, v15, v3, v9, v6}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/join/mgps/enums/ConstantIntEnum;->NET:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v3, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v6, "MGAME"

    const/16 v9, 0xc

    const/16 v15, 0x2e

    move-object/from16 v16, v12

    const-string v12, "MGAME"

    invoke-direct {v3, v6, v9, v15, v12}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->MGAME:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v6, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "DATA"

    const/16 v12, 0xd

    const/16 v15, 0x2f

    move-object/from16 v17, v3

    const-string v3, "DATA"

    invoke-direct {v6, v9, v12, v15, v3}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v3, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "OBB"

    const/16 v12, 0xe

    const/16 v15, 0x30

    move-object/from16 v18, v6

    const-string v6, "OBB"

    invoke-direct {v3, v9, v12, v15, v6}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 3
    new-instance v6, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "MD"

    const/16 v12, 0xf

    const/16 v15, 0x33

    move-object/from16 v19, v3

    const-string v3, "MD"

    invoke-direct {v6, v9, v12, v15, v3}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v3, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "GBA_ENHANCE"

    const/16 v12, 0x10

    const/16 v15, 0x34

    move-object/from16 v20, v6

    const-string v6, "GBA_ENHANCE"

    invoke-direct {v3, v9, v12, v15, v6}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GBA_ENHANCE:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v6, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "PS"

    const/16 v12, 0x11

    const/16 v15, 0x35

    move-object/from16 v21, v3

    const-string v3, "PS"

    invoke-direct {v6, v9, v12, v15, v3}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v3, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "WSC"

    const/16 v12, 0x12

    const/16 v15, 0x36

    move-object/from16 v22, v6

    const-string v6, "WSC"

    invoke-direct {v3, v9, v12, v15, v6}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v6, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "CHOICENESS"

    const/16 v12, 0x13

    const/16 v15, 0x37

    move-object/from16 v23, v3

    const-string v3, "\u7cbe\u9009\u5e94\u7528"

    invoke-direct {v6, v9, v12, v15, v3}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->CHOICENESS:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v3, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "GBC"

    const/16 v12, 0x14

    const/16 v15, 0x38

    move-object/from16 v24, v6

    const-string v6, "GBC"

    invoke-direct {v3, v9, v12, v15, v6}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v6, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "N64"

    const/16 v12, 0x15

    const/16 v15, 0x39

    move-object/from16 v25, v3

    const-string v3, "N64"

    invoke-direct {v6, v9, v12, v15, v3}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 4
    new-instance v3, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "ONS"

    const/16 v12, 0x16

    const/16 v15, 0x3a

    move-object/from16 v26, v6

    const-string v6, "ONS"

    invoke-direct {v3, v9, v12, v15, v6}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v6, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "DC"

    const/16 v12, 0x3c

    const-string v15, "DC"

    move-object/from16 v27, v3

    const/16 v3, 0x17

    invoke-direct {v6, v9, v3, v12, v15}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v3, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "H5"

    const/16 v12, 0x18

    const/16 v15, 0x66

    move-object/from16 v28, v6

    const-string v6, "H5"

    invoke-direct {v3, v9, v12, v15, v6}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v6, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "VA32"

    const/16 v12, 0x19

    const/16 v15, 0xa5

    move-object/from16 v29, v3

    const-string v3, "VA32"

    invoke-direct {v6, v9, v12, v15, v3}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v3, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "VA64"

    const/16 v12, 0x1a

    const/16 v15, 0xa6

    move-object/from16 v30, v6

    const-string v6, "VA64"

    invoke-direct {v3, v9, v12, v15, v6}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v6, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "PS2"

    const/16 v12, 0x1b

    const/16 v15, 0xa7

    move-object/from16 v31, v3

    const-string v3, "PS2"

    invoke-direct {v6, v9, v12, v15, v3}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 5
    new-instance v3, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "FEATURED_ONLINE"

    const/16 v12, 0x1c

    const/16 v15, 0x2711

    move-object/from16 v32, v6

    const-string v6, "\u7cbe\u9009\u7f51\u6e38"

    invoke-direct {v3, v9, v12, v15, v6}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FEATURED_ONLINE:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v6, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "LARGE_SINGLE"

    const/16 v12, 0x1d

    const/16 v15, 0x2712

    move-object/from16 v33, v3

    const-string v3, "\u5927\u578b\u5355\u673a"

    invoke-direct {v6, v9, v12, v15, v3}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->LARGE_SINGLE:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v3, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "OBBDATA"

    const/16 v12, 0x1e

    const/16 v15, 0x9a

    move-object/from16 v34, v6

    const-string v6, "OBBDATA"

    invoke-direct {v3, v9, v12, v15, v6}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->OBBDATA:Lcom/join/mgps/enums/ConstantIntEnum;

    new-instance v6, Lcom/join/mgps/enums/ConstantIntEnum;

    const-string v9, "MOD"

    const/16 v12, 0x2714

    const-string v15, "MOD"

    move-object/from16 v35, v3

    const/16 v3, 0x1f

    invoke-direct {v6, v9, v3, v12, v15}, Lcom/join/mgps/enums/ConstantIntEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->MOD:Lcom/join/mgps/enums/ConstantIntEnum;

    const/16 v3, 0x20

    new-array v3, v3, [Lcom/join/mgps/enums/ConstantIntEnum;

    const/4 v9, 0x0

    aput-object v0, v3, v9

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    const/4 v0, 0x4

    aput-object v10, v3, v0

    const/4 v0, 0x5

    aput-object v13, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v8, v3, v0

    const/16 v0, 0x8

    aput-object v14, v3, v0

    const/16 v0, 0x9

    aput-object v5, v3, v0

    const/16 v0, 0xa

    aput-object v2, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    const/16 v0, 0xf

    aput-object v20, v3, v0

    const/16 v0, 0x10

    aput-object v21, v3, v0

    const/16 v0, 0x11

    aput-object v22, v3, v0

    const/16 v0, 0x12

    aput-object v23, v3, v0

    const/16 v0, 0x13

    aput-object v24, v3, v0

    const/16 v0, 0x14

    aput-object v25, v3, v0

    const/16 v0, 0x15

    aput-object v26, v3, v0

    const/16 v0, 0x16

    aput-object v27, v3, v0

    const/16 v0, 0x17

    aput-object v28, v3, v0

    const/16 v0, 0x18

    aput-object v29, v3, v0

    const/16 v0, 0x19

    aput-object v30, v3, v0

    const/16 v0, 0x1a

    aput-object v31, v3, v0

    const/16 v0, 0x1b

    aput-object v32, v3, v0

    const/16 v0, 0x1c

    aput-object v33, v3, v0

    const/16 v0, 0x1d

    aput-object v34, v3, v0

    const/16 v0, 0x1e

    aput-object v35, v3, v0

    const/16 v0, 0x1f

    aput-object v6, v3, v0

    .line 6
    sput-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->$VALUES:[Lcom/join/mgps/enums/ConstantIntEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/enums/ConstantIntEnum;->value:I

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/join/mgps/enums/ConstantIntEnum;->nickName:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/join/mgps/enums/ConstantIntEnum;->value:I

    .line 5
    iput-object p4, p0, Lcom/join/mgps/enums/ConstantIntEnum;->nickName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/enums/ConstantIntEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/enums/ConstantIntEnum;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/enums/ConstantIntEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->$VALUES:[Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, [Lcom/join/mgps/enums/ConstantIntEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/enums/ConstantIntEnum;

    return-object v0
.end method


# virtual methods
.method public nickName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/enums/ConstantIntEnum;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/enums/ConstantIntEnum;->value:I

    return v0
.end method
