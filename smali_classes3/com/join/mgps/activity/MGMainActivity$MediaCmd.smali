.class public final enum Lcom/join/mgps/activity/MGMainActivity$MediaCmd;
.super Ljava/lang/Enum;
.source "MGMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/activity/MGMainActivity$MediaCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

.field public static final enum CMD_FULLSCREEN:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

.field public static final enum CMD_PAUSE:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

.field public static final enum CMD_PLAY:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

.field public static final enum CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

.field public static final enum CMD_STOP:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

.field public static final enum CMD_TRANSLATE_Y:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    const-string v1, "CMD_PLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_PLAY:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    .line 2
    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    const-string v3, "CMD_PLAY_BACKGROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    .line 3
    new-instance v3, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    const-string v5, "CMD_PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_PAUSE:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    .line 4
    new-instance v5, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    const-string v7, "CMD_STOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_STOP:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    .line 5
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    const-string v9, "CMD_FULLSCREEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_FULLSCREEN:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    .line 6
    new-instance v9, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    const-string v11, "CMD_TRANSLATE_Y"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_TRANSLATE_Y:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->$VALUES:[Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/activity/MGMainActivity$MediaCmd;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/activity/MGMainActivity$MediaCmd;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->$VALUES:[Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    invoke-virtual {v0}, [Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    return-object v0
.end method
