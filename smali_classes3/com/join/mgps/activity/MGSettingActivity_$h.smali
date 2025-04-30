.class Lcom/join/mgps/activity/MGSettingActivity_$h;
.super Ljava/lang/Object;
.source "MGSettingActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGSettingActivity_;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/VersionDto;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/MGSettingActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGSettingActivity_;Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->c:Lcom/join/mgps/activity/MGSettingActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->a:Lcom/join/mgps/dto/VersionDto;

    iput-boolean p3, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->c:Lcom/join/mgps/activity/MGSettingActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->a:Lcom/join/mgps/dto/VersionDto;

    iget-boolean v2, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->b:Z

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MGSettingActivity_;->M0(Lcom/join/mgps/activity/MGSettingActivity_;Lcom/join/mgps/dto/VersionDto;Z)V

    return-void
.end method
