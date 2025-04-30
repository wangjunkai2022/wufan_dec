.class final enum Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;
.super Ljava/lang/Enum;
.source "MGMainClassifyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum DC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum FBA:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum FC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum FEATURED_ONLINE:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum GBA:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum GBC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum LARGE_SINGLE:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum MD:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum N64:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum NDS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum ONS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum PLAT_ALL:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum PS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum PSP:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum SFC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

.field public static final enum WSC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;


# instance fields
.field private id:Ljava/lang/String;

.field private resId:I

.field private title:Ljava/lang/String;

.field private titleAbbr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v1, "PLAT_ALL"

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "\u5168\u90e8"

    const-string v5, "\u7b5b\u9009"

    const v6, 0x7f080a02

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v7, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->PLAT_ALL:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v9, "FEATURED_ONLINE"

    const/4 v10, 0x1

    const-string v11, "10001"

    const-string v12, "\u7cbe\u9009\u7f51\u6e38"

    const-string v13, "\u7f51\u6e38"

    const v14, 0x7f08097a

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->FEATURED_ONLINE:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 3
    new-instance v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v16, "LARGE_SINGLE"

    const/16 v17, 0x2

    const-string v18, "10002"

    const-string v19, "\u5927\u578b\u5355\u673a"

    const-string v20, "\u5355\u673a"

    const v21, 0x7f080c29

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->LARGE_SINGLE:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 4
    new-instance v2, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v9, "FC"

    const/4 v10, 0x3

    const-string v11, "35"

    const-string v12, "FC\u5c0f\u9738\u738b"

    const-string v13, "FC"

    const v14, 0x7f0803f0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->FC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 5
    new-instance v3, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v16, "FBA"

    const/16 v17, 0x4

    const-string v18, "31"

    const-string v19, "\u8857\u673a\u6e38\u620f"

    const-string v20, "\u8857\u673a"

    const v21, 0x7f08074d

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->FBA:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 6
    new-instance v4, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v9, "GBA"

    const/4 v10, 0x5

    const-string v11, "33"

    const-string v12, "GBA\u6e38\u620f"

    const-string v13, "GBA"

    const v14, 0x7f0804bc

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->GBA:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 7
    new-instance v5, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v16, "PSP"

    const/16 v17, 0x6

    const-string v18, "34"

    const-string v19, "PSP\u6e38\u620f"

    const-string v20, "PSP"

    const v21, 0x7f080a44

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->PSP:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 8
    new-instance v6, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v9, "PS"

    const/4 v10, 0x7

    const-string v11, "53"

    const-string v12, "PS\u6e38\u620f"

    const-string v13, "PS"

    const v14, 0x7f080a41

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->PS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 9
    new-instance v8, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v16, "SFC"

    const/16 v17, 0x8

    const-string v18, "43"

    const-string v19, "SFC\u6e38\u620f"

    const-string v20, "SFC"

    const v21, 0x7f080af1

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v8, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->SFC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 10
    new-instance v16, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v10, "MD"

    const/16 v11, 0x9

    const-string v12, "51"

    const-string v13, "MD\u6e38\u620f"

    const-string v14, "MD"

    const v15, 0x7f0807c3

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v16, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->MD:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 11
    new-instance v9, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v18, "WSC"

    const/16 v19, 0xa

    const-string v20, "54"

    const-string v21, "WSC\u6e38\u620f"

    const-string v22, "WSC"

    const v23, 0x7f080d3b

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v9, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->WSC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 12
    new-instance v10, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v25, "NDS"

    const/16 v26, 0xb

    const-string v27, "32"

    const-string v28, "NDS\u6e38\u620f"

    const-string v29, "NDS"

    const v30, 0x7f08088f

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v10, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->NDS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 13
    new-instance v11, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v18, "GBC"

    const/16 v19, 0xc

    const-string v20, "56"

    const-string v21, "GBC\u6e38\u620f"

    const-string v22, "GBC"

    const v23, 0x7f0804c0

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v23}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v11, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->GBC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 14
    new-instance v12, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v25, "N64"

    const/16 v26, 0xd

    const-string v27, "57"

    const-string v28, "N64\u6e38\u620f"

    const-string v29, "N64"

    const v30, 0x7f08088b

    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v30}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v12, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->N64:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 15
    new-instance v13, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v18, "ONS"

    const/16 v19, 0xe

    const-string v20, "58"

    const-string v21, "ONS\u6e38\u620f"

    const-string v22, "ONS"

    const v23, 0x7f08097b

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v23}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v13, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->ONS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 16
    new-instance v14, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const-string v25, "DC"

    const/16 v26, 0xf

    const-string v27, "60"

    const-string v28, "dc\u6e38\u620f"

    const-string v29, "DC"

    const v30, 0x7f080319

    move-object/from16 v24, v14

    invoke-direct/range {v24 .. v30}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v14, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->DC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const/16 v15, 0x10

    new-array v15, v15, [Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    const/16 v17, 0x0

    aput-object v7, v15, v17

    const/4 v7, 0x1

    aput-object v0, v15, v7

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v16, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    .line 17
    sput-object v15, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->$VALUES:[Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->id:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->title:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->titleAbbr:Ljava/lang/String;

    .line 5
    iput p6, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->resId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->$VALUES:[Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    invoke-virtual {v0}, [Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    return-object v0
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public resId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->resId:I

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->title:Ljava/lang/String;

    return-object v0
.end method

.method public titleAbbr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->titleAbbr:Ljava/lang/String;

    return-object v0
.end method
