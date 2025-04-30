.class public Lcom/join/mgps/dto/CommonRequestBean;
.super Ljava/lang/Object;
.source "CommonRequestBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private androidId:Ljava/lang/String;

.field private channel_num:Ljava/lang/String;

.field private deviceid:Ljava/lang/String;

.field private messages:Lcom/join/mgps/dto/CommonRequestMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/CommonRequestMessage<",
            "TE;>;"
        }
    .end annotation
.end field

.field private package_name:Ljava/lang/String;

.field private package_type:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private requesttype:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private target_version:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/join/android/app/mgsim/wufun/b;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->target_version:I

    const-string v0, "wufun"

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_type:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->platform:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 5
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CommonRequestMessage<",
            "TE;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/join/android/app/mgsim/wufun/b;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->target_version:I

    const-string v0, "wufun"

    .line 44
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_type:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->platform:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 46
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_name:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->version:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/join/mgps/dto/CommonRequestBean;->deviceid:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/join/mgps/dto/CommonRequestBean;->sign:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/join/mgps/dto/CommonRequestBean;->messages:Lcom/join/mgps/dto/CommonRequestMessage;

    .line 51
    iput-object p3, p0, Lcom/join/mgps/dto/CommonRequestBean;->androidId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CommonRequestMessage<",
            "TE;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/join/android/app/mgsim/wufun/b;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->target_version:I

    const-string v0, "wufun"

    .line 33
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_type:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->platform:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 35
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_name:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->version:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/join/mgps/dto/CommonRequestBean;->deviceid:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/join/mgps/dto/CommonRequestBean;->sign:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/join/mgps/dto/CommonRequestBean;->messages:Lcom/join/mgps/dto/CommonRequestMessage;

    .line 40
    iput-object p4, p0, Lcom/join/mgps/dto/CommonRequestBean;->channel_num:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/join/mgps/dto/CommonRequestBean;->androidId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CommonRequestMessage<",
            "TE;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/join/android/app/mgsim/wufun/b;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->target_version:I

    const-string v0, "wufun"

    .line 8
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_type:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->platform:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 10
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_name:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->version:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/join/mgps/dto/CommonRequestBean;->deviceid:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/join/mgps/dto/CommonRequestBean;->requesttype:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/join/mgps/dto/CommonRequestBean;->channel_num:Ljava/lang/String;

    .line 15
    iput-object p6, p0, Lcom/join/mgps/dto/CommonRequestBean;->sign:Ljava/lang/String;

    .line 16
    iput-object p7, p0, Lcom/join/mgps/dto/CommonRequestBean;->messages:Lcom/join/mgps/dto/CommonRequestMessage;

    .line 17
    iput-object p3, p0, Lcom/join/mgps/dto/CommonRequestBean;->androidId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CommonRequestMessage<",
            "TE;>;I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/join/android/app/mgsim/wufun/b;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->target_version:I

    const-string v0, "wufun"

    .line 20
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_type:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->platform:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 22
    iput-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_name:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->version:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/join/mgps/dto/CommonRequestBean;->deviceid:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/join/mgps/dto/CommonRequestBean;->requesttype:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/join/mgps/dto/CommonRequestBean;->channel_num:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/join/mgps/dto/CommonRequestBean;->sign:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Lcom/join/mgps/dto/CommonRequestBean;->messages:Lcom/join/mgps/dto/CommonRequestMessage;

    .line 29
    iput p8, p0, Lcom/join/mgps/dto/CommonRequestBean;->target_version:I

    .line 30
    iput-object p3, p0, Lcom/join/mgps/dto/CommonRequestBean;->androidId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->channel_num:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessages()Lcom/join/mgps/dto/CommonRequestMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->messages:Lcom/join/mgps/dto/CommonRequestMessage;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_type:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getRequesttype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->requesttype:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget_version()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->target_version:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonRequestBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->androidId:Ljava/lang/String;

    return-void
.end method

.method public setChannel_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->channel_num:Ljava/lang/String;

    return-void
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->deviceid:Ljava/lang/String;

    return-void
.end method

.method public setMessages(Lcom/join/mgps/dto/CommonRequestMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->messages:Lcom/join/mgps/dto/CommonRequestMessage;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPackage_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->package_type:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->platform:Ljava/lang/String;

    return-void
.end method

.method public setRequesttype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->requesttype:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->sign:Ljava/lang/String;

    return-void
.end method

.method public setTarget_version(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->target_version:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBean;->version:Ljava/lang/String;

    return-void
.end method
