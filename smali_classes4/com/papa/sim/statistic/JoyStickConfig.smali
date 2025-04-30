.class public Lcom/papa/sim/statistic/JoyStickConfig;
.super Ljava/lang/Object;
.source "JoyStickConfig.java"


# static fields
.field public static final TYPE_DC:I = 0x3c

.field public static final TYPE_FBA:I = 0x1f

.field public static final TYPE_FC:I = 0x23

.field public static final TYPE_GBA:I = 0x21

.field public static final TYPE_GBC:I = 0x38

.field public static final TYPE_MD:I = 0x33

.field public static final TYPE_N64:I = 0x39

.field public static final TYPE_NDS:I = 0x20

.field public static final TYPE_ONS:I = 0x3a

.field public static final TYPE_PS:I = 0x35

.field public static final TYPE_PSP:I = 0x22

.field public static final TYPE_SFC:I = 0x2b

.field public static final TYPE_WSC:I = 0x36


# instance fields
.field private file:Ljava/lang/String;

.field private gamepad_mac:Ljava/lang/String;

.field private gamepad_name:Ljava/lang/String;

.field private id:I

.field private type:I

.field private uid:I

.field private update_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/JoyStickConfig;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getGamepad_mac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/JoyStickConfig;->gamepad_mac:Ljava/lang/String;

    return-object v0
.end method

.method public getGamepad_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/JoyStickConfig;->gamepad_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/JoyStickConfig;->id:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/JoyStickConfig;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/JoyStickConfig;->uid:I

    return v0
.end method

.method public getUpdate_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/JoyStickConfig;->update_time:J

    return-wide v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/JoyStickConfig;->file:Ljava/lang/String;

    return-void
.end method

.method public setGamepad_mac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/JoyStickConfig;->gamepad_mac:Ljava/lang/String;

    return-void
.end method

.method public setGamepad_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/JoyStickConfig;->gamepad_name:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/JoyStickConfig;->id:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/JoyStickConfig;->type:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/JoyStickConfig;->uid:I

    return-void
.end method

.method public setUpdate_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/JoyStickConfig;->update_time:J

    return-void
.end method
