.class public Lcom/papa91/arc/MApplication;
.super Lcom/papa91/arc/BuglyApplication;
.source "MApplication.java"


# static fields
.field public static adIdEmu:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/BuglyApplication;-><init>()V

    return-void
.end method

.method private initSharePref()V
    .locals 2

    const-string v0, "PrefDef"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/papa91/arc/MApplication$1;

    invoke-direct {v1, p0, v0}, Lcom/papa91/arc/MApplication$1;-><init>(Lcom/papa91/arc/MApplication;Landroid/content/SharedPreferences;)V

    sput-object v1, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yatoooon/screenadaptation/a;->i(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/BuglyApplication;->onCreate()V

    .line 2
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setDownsampleEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    .line 4
    invoke-static {p0}, Lcom/yatoooon/screenadaptation/e;->b(Landroid/content/Context;)V

    .line 5
    invoke-direct {p0}, Lcom/papa91/arc/MApplication;->initSharePref()V

    return-void
.end method
