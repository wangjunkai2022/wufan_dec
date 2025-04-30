.class public Lcom/join/mgps/joystick/map/KeyMap;
.super Ljava/lang/Object;
.source "KeyMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/joystick/map/KeyMap$EmuMap;
    }
.end annotation


# static fields
.field public static final MAX_FILE_NUM:I = 0x4

.field public static final dcDefKeysValue:[Ljava/lang/String;

.field public static final dcKeyMapSection:Ljava/lang/String; = "DC_KEY_MAP"

.field public static final dcKeysKey:[Ljava/lang/String;

.field public static final defJoystickKeys:[I

.field public static final defKeyboardKeys:[I

.field public static final emuDefKeysValue:[Ljava/lang/String;

.field public static final emuKeyMapSection:Ljava/lang/String; = "EMU_KEY_MAP"

.field public static final emuKeysKey:[Ljava/lang/String;

.field public static final fbaDefKeysValue:[Ljava/lang/String;

.field public static final fbaKeyMapSection:Ljava/lang/String; = "FBA_KEY_MAP"

.field public static final fbaKeysKey:[Ljava/lang/String;

.field public static final fcDefKeysValue:[Ljava/lang/String;

.field public static final fcKeyMapSection:Ljava/lang/String; = "FC_KEY_MAP"

.field public static final fcKeysKey:[Ljava/lang/String;

.field public static final gbaDefKeysValue:[Ljava/lang/String;

.field public static final gbaKeyMapSection:Ljava/lang/String; = "GBA_KEY_MAP"

.field public static final gbaKeysKey:[Ljava/lang/String;

.field public static final gbcDefKeysValue:[Ljava/lang/String;

.field public static final gbcKeyMapSection:Ljava/lang/String; = "GBC_KEY_MAP"

.field public static final gbcKeysKey:[Ljava/lang/String;

.field public static final inifiles:[Ljava/lang/String;

.field public static final keySection:Ljava/lang/String; = "KEY"

.field public static final keysKey:[Ljava/lang/String;

.field public static final mdDefKeysValue:[Ljava/lang/String;

.field public static final mdKeyMapSection:Ljava/lang/String; = "MD_KEY_MAP"

.field public static final mdKeysKey:[Ljava/lang/String;

.field public static final n64DefKeysValue:[Ljava/lang/String;

.field public static final n64KeyMapSection:Ljava/lang/String; = "N64_KEY_MAP"

.field public static final n64KeysKey:[Ljava/lang/String;

.field public static final psDefKeysValue:[Ljava/lang/String;

.field public static final psKeyMapSection:Ljava/lang/String; = "PS_KEY_MAP"

.field public static final psKeysKey:[Ljava/lang/String;

.field public static final pspDefKeysValue:[Ljava/lang/String;

.field public static final pspKeyMapSection:Ljava/lang/String; = "PSP_KEY_MAP"

.field public static final pspKeysKey:[Ljava/lang/String;

.field public static final sections:[Ljava/lang/String;

.field public static final sfcDefKeysValue:[Ljava/lang/String;

.field public static final sfcKeyMapSection:Ljava/lang/String; = "SFC_KEY_MAP"

.field public static final sfcKeysKey:[Ljava/lang/String;

.field public static final wscDefKeysValue:[Ljava/lang/String;

.field public static final wscKeyMapSection:Ljava/lang/String; = "WSC_KEY_MAP"

.field public static final wscKeysKey:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    const-string v0, "key_map.ini"

    const-string v1, ""

    .line 1
    filled-new-array {v0, v1, v1, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->inifiles:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v2, v0, [I

    .line 2
    fill-array-data v2, :array_0

    sput-object v2, Lcom/join/mgps/joystick/map/KeyMap;->defJoystickKeys:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->defKeyboardKeys:[I

    const-string v2, "KEY_SELECT"

    const-string v3, "KEY_START"

    const-string v4, "KEY_X"

    const-string v5, "KEY_A"

    const-string v6, "KEY_Y"

    const-string v7, "KEY_B"

    const-string v8, "KEY_L1"

    const-string v9, "KEY_L2"

    const-string v10, "KEY_R1"

    const-string v11, "KEY_R2"

    const-string v12, "KEY_DPAD_LEFT"

    const-string v13, "KEY_DPAD_UP"

    const-string v14, "KEY_DPAD_RIGHT"

    const-string v15, "KEY_DPAD_DOWN"

    const-string v16, "KEY_BUTTON_THUMBL"

    const-string v17, "KEY_BUTTON_THUMBR"

    .line 4
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->keysKey:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SELECT:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_START:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_A:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x2

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_B:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x3

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_C:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x4

    aput-object v3, v2, v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_D:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v14}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x5

    aput-object v3, v2, v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_E:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_F:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v19

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v20

    or-int v15, v19, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x8

    aput-object v0, v2, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v19

    invoke-virtual {v14}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v20

    or-int v15, v19, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x9

    aput-object v0, v2, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v19

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v20

    or-int v19, v19, v20

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v20

    or-int v15, v19, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xa

    aput-object v0, v2, v15

    sput-object v2, Lcom/join/mgps/joystick/map/KeyMap;->fbaKeysKey:[Ljava/lang/String;

    const-string v21, "KEY_SELECT"

    const-string v22, "KEY_START"

    const-string v23, "KEY_X"

    const-string v24, "KEY_A"

    const-string v25, "KEY_Y"

    const-string v26, "KEY_B"

    const-string v27, "KEY_L1"

    const-string v28, "KEY_L2"

    const-string v29, "KEY_R1"

    const-string v30, "KEY_R2"

    const-string v31, "KEY_BUTTON_THUMBR"

    .line 6
    filled-new-array/range {v21 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->fbaDefKeysValue:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x5

    aput-object v2, v0, v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v20

    or-int v15, v15, v20

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x6

    aput-object v2, v0, v15

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->fcKeysKey:[Ljava/lang/String;

    const-string v21, "KEY_SELECT"

    const-string v22, "KEY_START"

    const-string v23, "KEY_A"

    const-string v24, "KEY_B"

    const-string v25, "KEY_X"

    const-string v26, "KEY_Y"

    const-string v27, "KEY_R1"

    .line 8
    filled-new-array/range {v21 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->fcDefKeysValue:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x5

    aput-object v0, v2, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_L1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x6

    aput-object v0, v2, v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_R1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    sput-object v2, Lcom/join/mgps/joystick/map/KeyMap;->sfcKeysKey:[Ljava/lang/String;

    const-string v22, "KEY_SELECT"

    const-string v23, "KEY_START"

    const-string v24, "KEY_X"

    const-string v25, "KEY_A"

    const-string v26, "KEY_Y"

    const-string v27, "KEY_B"

    const-string v28, "KEY_L1"

    const-string v29, "KEY_R1"

    .line 10
    filled-new-array/range {v22 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->sfcDefKeysValue:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x3

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x4

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x5

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x6

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    sput-object v2, Lcom/join/mgps/joystick/map/KeyMap;->pspKeysKey:[Ljava/lang/String;

    const-string v22, "KEY_SELECT"

    const-string v23, "KEY_START"

    const-string v24, "KEY_X"

    const-string v25, "KEY_A"

    const-string v26, "KEY_Y"

    const-string v27, "KEY_B"

    const-string v28, "KEY_L1"

    const-string v29, "KEY_R1"

    .line 12
    filled-new-array/range {v22 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->pspDefKeysValue:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x3

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x4

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x5

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x6

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    sput-object v2, Lcom/join/mgps/joystick/map/KeyMap;->gbaKeysKey:[Ljava/lang/String;

    const-string v22, "KEY_SELECT"

    const-string v23, "KEY_START"

    const-string v24, "KEY_B"

    const-string v25, "KEY_X"

    const-string v26, "KEY_Y"

    const-string v27, "KEY_A"

    const-string v28, "KEY_R1"

    const-string v29, "KEY_L1"

    .line 14
    filled-new-array/range {v22 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->gbaDefKeysValue:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x3

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x4

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x5

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x6

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    sput-object v2, Lcom/join/mgps/joystick/map/KeyMap;->mdKeysKey:[Ljava/lang/String;

    const-string v22, "KEY_SELECT"

    const-string v23, "KEY_START"

    const-string v24, "KEY_X"

    const-string v25, "KEY_B"

    const-string v26, "KEY_Y"

    const-string v27, "KEY_A"

    const-string v28, "KEY_R1"

    const-string v29, "KEY_L1"

    .line 16
    filled-new-array/range {v22 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->mdDefKeysValue:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x3

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x4

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x5

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x6

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_L2:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v11}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_R2:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x9

    aput-object v0, v2, v9

    sput-object v2, Lcom/join/mgps/joystick/map/KeyMap;->psKeysKey:[Ljava/lang/String;

    const-string v22, "KEY_SELECT"

    const-string v23, "KEY_START"

    const-string v24, "KEY_X"

    const-string v25, "KEY_A"

    const-string v26, "KEY_Y"

    const-string v27, "KEY_B"

    const-string v28, "KEY_L1"

    const-string v29, "KEY_R1"

    const-string v30, "KEY_L2"

    const-string v31, "KEY_R2"

    .line 18
    filled-new-array/range {v22 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->psDefKeysValue:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x2

    aput-object v2, v0, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x3

    aput-object v2, v0, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_UP1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v9}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x4

    aput-object v2, v0, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_RIGHT1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v9}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x5

    aput-object v2, v0, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_LEFT1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v9}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x6

    aput-object v2, v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_DOWN1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v7}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x7

    aput-object v2, v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_LEFT:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v7}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x8

    aput-object v2, v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_UP:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v7}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x9

    aput-object v2, v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_RIGHT:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v7}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xa

    aput-object v2, v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_DOWN:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v7}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xb

    aput-object v2, v0, v7

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->wscKeysKey:[Ljava/lang/String;

    const-string v23, "KEY_SELECT"

    const-string v24, "KEY_START"

    const-string v25, "KEY_A"

    const-string v26, "KEY_B"

    const-string v27, "KEY_L1"

    const-string v28, "KEY_R1"

    const-string v29, "KEY_L2"

    const-string v30, "KEY_R2"

    const-string v31, "KEY_DPAD_LEFT"

    const-string v32, "KEY_DPAD_UP"

    const-string v33, "KEY_DPAD_RIGHT"

    const-string v34, "KEY_DPAD_DOWN"

    .line 20
    filled-new-array/range {v23 .. v34}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->wscDefKeysValue:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v7

    or-int/2addr v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, v2, v4

    sput-object v2, Lcom/join/mgps/joystick/map/KeyMap;->gbcKeysKey:[Ljava/lang/String;

    const-string v23, "KEY_SELECT"

    const-string v24, "KEY_START"

    const-string v25, "KEY_A"

    const-string v26, "KEY_B"

    const-string v27, "KEY_X"

    const-string v28, "KEY_Y"

    const-string v29, "KEY_R1"

    .line 22
    filled-new-array/range {v23 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->gbcDefKeysValue:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, v2, v4

    sput-object v2, Lcom/join/mgps/joystick/map/KeyMap;->dcKeysKey:[Ljava/lang/String;

    const-string v23, "KEY_START"

    const-string v24, "KEY_A"

    const-string v25, "KEY_B"

    const-string v26, "KEY_X"

    const-string v27, "KEY_Y"

    const-string v28, "KEY_L1"

    const-string v29, "KEY_R1"

    .line 24
    filled-new-array/range {v23 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->dcDefKeysValue:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->n64KeysKey:[Ljava/lang/String;

    const-string v3, "KEY_START"

    const-string v4, "KEY_A"

    const-string v5, "KEY_B"

    const-string v6, "KEY_X"

    const-string v7, "KEY_Y"

    const-string v8, "KEY_L1"

    const-string v9, "KEY_R1"

    const-string v10, "KEY_L2"

    const-string v11, "KEY_R2"

    const-string v12, "KEY_BUTTON_THUMBL"

    .line 26
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->n64DefKeysValue:[Ljava/lang/String;

    const-string v1, "hideVirtual"

    const-string v2, "FBA_KEY_MAP"

    const-string v3, "FC_KEY_MAP"

    const-string v4, "SFC_KEY_MAP"

    const-string v5, "GBA_KEY_MAP"

    const-string v6, "PSP_KEY_MAP"

    const-string v7, "MD_KEY_MAP"

    const-string v8, "PS_KEY_MAP"

    const-string v9, "WSC_KEY_MAP"

    const-string v10, "GBC_KEY_MAP"

    const-string v11, "DC_KEY_MAP"

    const-string v12, "N64_KEY_MAP"

    .line 27
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->emuKeysKey:[Ljava/lang/String;

    const-string v1, "true"

    const-string v2, "1"

    const-string v3, "1"

    const-string v4, "1"

    const-string v5, "1"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "1"

    const-string v9, "1"

    const-string v10, "1"

    const-string v11, "1"

    const-string v12, "1"

    .line 28
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->emuDefKeysValue:[Ljava/lang/String;

    const-string v1, "KEY"

    const-string v2, "EMU_KEY_MAP"

    const-string v3, "FBA_KEY_MAP"

    const-string v4, "SFC_KEY_MAP"

    const-string v5, "FC_KEY_MAP"

    const-string v6, "GBA_KEY_MAP"

    const-string v7, "PSP_KEY_MAP"

    const-string v8, "MD_KEY_MAP"

    const-string v9, "PS_KEY_MAP"

    const-string v10, "WSC_KEY_MAP"

    const-string v11, "GBC_KEY_MAP"

    const-string v12, "DC_KEY_MAP"

    const-string v13, "N64_KEY_MAP"

    .line 29
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->sections:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x6d
        0x6c
        0x63
        0x60
        0x64
        0x61
        0x66
        0x68
        0x67
        0x69
        0x15
        0x13
        0x16
        0x14
        0x6a
        0x6b
    .end array-data

    :array_1
    .array-data 4
        0x43
        0x42
        0x8
        0x9
        0xb
        0xa
        0xc
        0xe
        0xd
        0xf
        0x1d
        0x33
        0x20
        0x2f
        0x10
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
