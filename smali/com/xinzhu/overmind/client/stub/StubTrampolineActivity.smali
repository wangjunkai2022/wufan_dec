.class public Lcom/xinzhu/overmind/client/stub/StubTrampolineActivity;
.super Landroid/app/Activity;
.source "StubTrampolineActivity.java"


# static fields
.field public static final a:Ljava/lang/String; = "StubTrampolineActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/xinzhu/haunted/android/content/m;

    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/content/m;-><init>(Ljava/lang/Object;)V

    const-string v2, "_VM_|_trampoline_result_to_"

    .line 4
    invoke-virtual {v1, v2}, Lcom/xinzhu/haunted/android/content/m;->c(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    const-string v1, "_VM_|_trampoline_result_who_"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "_VM_|_trampoline_request_code_"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v1, "_VM_|_trampoline_options_"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v20

    const-string v1, "_VM_|_trampoline_calling_package_"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "_VM_|_trampoline_flagsMask_"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "_VM_|_trampoline_flagsValues_"

    .line 10
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 11
    invoke-static {v0}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->sanityCheck()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    if-nez v8, :cond_1

    .line 14
    iget-object v1, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v11

    iget v12, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mUserId:I

    iget-object v14, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v20}, Lcom/xinzhu/overmind/client/frameworks/a;->y(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v1, -0xc4

    and-int/2addr v2, v1

    .line 16
    iget-object v3, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v3

    iget v4, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mUserId:I

    iget-object v6, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    move-object v5, v13

    move-object/from16 v12, v20

    invoke-virtual/range {v3 .. v12}, Lcom/xinzhu/overmind/client/frameworks/a;->y(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
