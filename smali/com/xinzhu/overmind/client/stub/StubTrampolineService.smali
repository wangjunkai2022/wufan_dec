.class public Lcom/xinzhu/overmind/client/stub/StubTrampolineService;
.super Landroid/app/Service;
.source "StubTrampolineService.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/client/stub/StubTrampolineService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/client/stub/StubTrampolineService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/xinzhu/overmind/client/stub/StubTrampolineService;->a:Ljava/lang/String;

    const-string p3, "StubTrampolineService onStartCommand"

    invoke-static {p2, p3}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->sanityCheck()Z

    move-result p3

    if-nez p3, :cond_0

    return p2

    .line 4
    :cond_0
    iget-object p3, p1, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mUserId:I

    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/xinzhu/overmind/client/frameworks/f;->B(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mUserId:I

    invoke-virtual {v0, p3, v1, p1}, Lcom/xinzhu/overmind/client/frameworks/a;->startService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return p2
.end method
