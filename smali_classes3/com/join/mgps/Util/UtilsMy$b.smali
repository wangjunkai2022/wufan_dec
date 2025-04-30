.class Lcom/join/mgps/Util/UtilsMy$b;
.super Ljava/lang/Thread;
.source "UtilsMy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->o3(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x320

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$b;->a:Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/BootPageData;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BootPageData;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getPerformance_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/PapaPlugGuideActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
