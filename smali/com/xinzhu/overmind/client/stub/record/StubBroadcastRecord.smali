.class public Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;
.super Ljava/lang/Object;
.source "StubBroadcastRecord.java"


# instance fields
.field public mActivityInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mIntent:Landroid/content/Intent;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "activityInfo",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ActivityInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;->mIntent:Landroid/content/Intent;

    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;->mActivityInfo:Ljava/util/ArrayList;

    .line 4
    iput p3, p0, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;->mUserId:I

    return-void
.end method

.method public static create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string v0, "_VM_|_target_"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "_VM_|_activity_info_"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "_VM_|_user_id_"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 4
    new-instance v2, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;

    invoke-direct {v2, v0, v1, p0}, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;I)V

    return-object v2
.end method

.method public static saveStub(Landroid/content/Intent;Landroid/content/Intent;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shadow",
            "target",
            "activityInfo",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ActivityInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "_VM_|_target_"

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "_VM_|_activity_info_"

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "_VM_|_user_id_"

    .line 3
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
