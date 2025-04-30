.class final enum Lcom/papa91/activity/EmuBaseActivity$MenuType;
.super Ljava/lang/Enum;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MenuType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa91/activity/EmuBaseActivity$MenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum cheating:Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum gate:Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum oneKey:Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum performance:Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum slot:Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum vip:Lcom/papa91/activity/EmuBaseActivity$MenuType;


# instance fields
.field private mCode:I

.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    const-string v1, "slot"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u5b58\u6863"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->slot:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 2
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    const-string v4, "cheating"

    const/4 v5, 0x2

    const-string v6, "\u91d1\u624b\u6307"

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity$MenuType;->cheating:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 3
    new-instance v4, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    const-string v6, "performance"

    const/4 v7, 0x3

    const-string v8, "\u8bbe\u7f6e"

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/papa91/activity/EmuBaseActivity$MenuType;->performance:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 4
    new-instance v6, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    const-string v8, "vip"

    const/4 v9, 0x4

    const-string v10, "\u4f1a\u5458"

    invoke-direct {v6, v8, v7, v9, v10}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/papa91/activity/EmuBaseActivity$MenuType;->vip:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 5
    new-instance v8, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    const-string v10, "oneKey"

    const/4 v11, 0x5

    const-string v12, "\u4e00\u952e\u6280\u80fd"

    invoke-direct {v8, v10, v9, v11, v12}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/papa91/activity/EmuBaseActivity$MenuType;->oneKey:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 6
    new-instance v10, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    const-string v12, "gate"

    const/4 v13, 0x6

    const-string v14, "\u9009\u5173"

    invoke-direct {v10, v12, v11, v13, v14}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/papa91/activity/EmuBaseActivity$MenuType;->gate:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    new-array v12, v13, [Lcom/papa91/activity/EmuBaseActivity$MenuType;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    .line 7
    sput-object v12, Lcom/papa91/activity/EmuBaseActivity$MenuType;->$VALUES:[Lcom/papa91/activity/EmuBaseActivity$MenuType;

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

    .line 2
    iput p3, p0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->mCode:I

    .line 3
    iput-object p4, p0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/papa91/activity/EmuBaseActivity$MenuType;
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    return-object p0
.end method

.method public static values()[Lcom/papa91/activity/EmuBaseActivity$MenuType;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->$VALUES:[Lcom/papa91/activity/EmuBaseActivity$MenuType;

    invoke-virtual {v0}, [Lcom/papa91/activity/EmuBaseActivity$MenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/papa91/activity/EmuBaseActivity$MenuType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->mCode:I

    return v0
.end method
