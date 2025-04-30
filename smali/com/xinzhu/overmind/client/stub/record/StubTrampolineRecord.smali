.class public Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;
.super Ljava/lang/Object;
.source "StubTrampolineRecord.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "StubTrampolineRecord"


# instance fields
.field public mTarget:Landroid/content/Intent;

.field public mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "target"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mUserId:I

    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    return-void
.end method

.method public static create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "_VM_|_sender_user_id_"

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "_VM_|_sender_target_"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 4
    new-instance v1, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;

    invoke-direct {v1, v0, p0}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;-><init>(ILandroid/content/Intent;)V

    return-object v1
.end method

.method public static saveStub(Landroid/content/Intent;Landroid/content/Intent;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shadow",
            "target",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveStub check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "_VM_|_sender_target_"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "_VM_|_sender_user_id_"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public sanityCheck()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mUserId:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
