.class public final enum Lcom/join/mgps/joystick/map/KeyMap$EmuMap;
.super Ljava/lang/Enum;
.source "KeyMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/joystick/map/KeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmuMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/joystick/map/KeyMap$EmuMap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum DC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum FBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum FC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum GBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum GBC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum MD:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum N64:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum PS:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum SFC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;


# instance fields
.field public keysKey:[Ljava/lang/String;

.field public map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public section:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v6, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    sget-object v4, Lcom/join/mgps/joystick/map/KeyMap;->fbaKeysKey:[Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/joystick/map/KeyMap;->fbaDefKeysValue:[Ljava/lang/String;

    const-string v1, "FBA"

    const/4 v2, 0x0

    const-string v3, "FBA_KEY_MAP"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v6, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 2
    new-instance v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    sget-object v11, Lcom/join/mgps/joystick/map/KeyMap;->fcKeysKey:[Ljava/lang/String;

    sget-object v12, Lcom/join/mgps/joystick/map/KeyMap;->fcDefKeysValue:[Ljava/lang/String;

    const-string v8, "FC"

    const/4 v9, 0x1

    const-string v10, "FC_KEY_MAP"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 3
    new-instance v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    sget-object v17, Lcom/join/mgps/joystick/map/KeyMap;->sfcKeysKey:[Ljava/lang/String;

    sget-object v18, Lcom/join/mgps/joystick/map/KeyMap;->sfcDefKeysValue:[Ljava/lang/String;

    const-string v14, "SFC"

    const/4 v15, 0x2

    const-string v16, "SFC_KEY_MAP"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->SFC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 4
    new-instance v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    sget-object v11, Lcom/join/mgps/joystick/map/KeyMap;->pspKeysKey:[Ljava/lang/String;

    sget-object v12, Lcom/join/mgps/joystick/map/KeyMap;->pspDefKeysValue:[Ljava/lang/String;

    const-string v8, "PSP"

    const/4 v9, 0x3

    const-string v10, "PSP_KEY_MAP"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 5
    new-instance v3, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    sget-object v17, Lcom/join/mgps/joystick/map/KeyMap;->gbaKeysKey:[Ljava/lang/String;

    sget-object v18, Lcom/join/mgps/joystick/map/KeyMap;->gbaDefKeysValue:[Ljava/lang/String;

    const-string v14, "GBA"

    const/4 v15, 0x4

    const-string v16, "GBA_KEY_MAP"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v3, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 6
    new-instance v4, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    sget-object v11, Lcom/join/mgps/joystick/map/KeyMap;->mdKeysKey:[Ljava/lang/String;

    sget-object v12, Lcom/join/mgps/joystick/map/KeyMap;->mdDefKeysValue:[Ljava/lang/String;

    const-string v8, "MD"

    const/4 v9, 0x5

    const-string v10, "MD_KEY_MAP"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v4, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->MD:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 7
    new-instance v5, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    sget-object v17, Lcom/join/mgps/joystick/map/KeyMap;->psKeysKey:[Ljava/lang/String;

    sget-object v18, Lcom/join/mgps/joystick/map/KeyMap;->psDefKeysValue:[Ljava/lang/String;

    const-string v14, "PS"

    const/4 v15, 0x6

    const-string v16, "PS_KEY_MAP"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PS:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 8
    new-instance v13, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    sget-object v11, Lcom/join/mgps/joystick/map/KeyMap;->wscKeysKey:[Ljava/lang/String;

    sget-object v12, Lcom/join/mgps/joystick/map/KeyMap;->wscDefKeysValue:[Ljava/lang/String;

    const-string v8, "WSC"

    const/4 v9, 0x7

    const-string v10, "WSC_KEY_MAP"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v13, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 9
    new-instance v7, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    sget-object v18, Lcom/join/mgps/joystick/map/KeyMap;->gbcKeysKey:[Ljava/lang/String;

    sget-object v19, Lcom/join/mgps/joystick/map/KeyMap;->gbcDefKeysValue:[Ljava/lang/String;

    const-string v15, "GBC"

    const/16 v16, 0x8

    const-string v17, "GBC_KEY_MAP"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 10
    new-instance v8, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    sget-object v24, Lcom/join/mgps/joystick/map/KeyMap;->dcKeysKey:[Ljava/lang/String;

    sget-object v25, Lcom/join/mgps/joystick/map/KeyMap;->dcDefKeysValue:[Ljava/lang/String;

    const-string v21, "DC"

    const/16 v22, 0x9

    const-string v23, "DC_KEY_MAP"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v8, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->DC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 11
    new-instance v9, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    sget-object v18, Lcom/join/mgps/joystick/map/KeyMap;->n64KeysKey:[Ljava/lang/String;

    sget-object v19, Lcom/join/mgps/joystick/map/KeyMap;->n64DefKeysValue:[Ljava/lang/String;

    const-string v15, "N64"

    const/16 v16, 0xa

    const-string v17, "N64_KEY_MAP"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v9, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->N64:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v6, 0x1

    aput-object v0, v10, v6

    const/4 v0, 0x2

    aput-object v1, v10, v0

    const/4 v0, 0x3

    aput-object v2, v10, v0

    const/4 v0, 0x4

    aput-object v3, v10, v0

    const/4 v0, 0x5

    aput-object v4, v10, v0

    const/4 v0, 0x6

    aput-object v5, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v7, v10, v0

    const/16 v0, 0x9

    aput-object v8, v10, v0

    const/16 v0, 0xa

    aput-object v9, v10, v0

    .line 12
    sput-object v10, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->$VALUES:[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->keysKey:[Ljava/lang/String;

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p5, :cond_2

    .line 4
    array-length p2, p5

    array-length p3, p4

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 5
    :goto_1
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    .line 6
    :goto_2
    array-length p3, p4

    if-ge p1, p3, :cond_4

    if-eqz p2, :cond_3

    .line 7
    iget-object p3, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    aget-object v0, p4, p1

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 8
    :cond_3
    iget-object p3, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    aget-object v0, p4, p1

    aget-object v1, p5, p1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static getEmuMap(Ljava/lang/String;)Lcom/join/mgps/joystick/map/KeyMap$EmuMap;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->values()[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 3
    iget-object v5, v4, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/joystick/map/KeyMap$EmuMap;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->$VALUES:[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    invoke-virtual {v0}, [Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    return-object v0
.end method


# virtual methods
.method public defValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
