.class Lcom/join/mgps/activity/DownloadSettingActivity$c;
.super Ljava/lang/Object;
.source "DownloadSettingActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/t0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DownloadSettingActivity;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/DownloadSettingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DownloadSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity$c;->a:Lcom/join/mgps/activity/DownloadSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity$c;->a:Lcom/join/mgps/activity/DownloadSettingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/DownloadSettingActivity;->i:Landroid/widget/TextView;

    const-string v1, "\u6c38\u4e0d\u63d0\u9192"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity$c;->a:Lcom/join/mgps/activity/DownloadSettingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/DownloadSettingActivity;->i:Landroid/widget/TextView;

    const-string v1, "\u6bcf\u6b21\u90fd\u63d0\u9192"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity$c;->a:Lcom/join/mgps/activity/DownloadSettingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/DownloadSettingActivity;->i:Landroid/widget/TextView;

    const-string v1, "\u5927\u4e8e50M\u63d0\u9192"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity$c;->a:Lcom/join/mgps/activity/DownloadSettingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/DownloadSettingActivity;->i:Landroid/widget/TextView;

    const-string v1, "\u5927\u4e8e30M\u63d0\u9192"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity$c;->a:Lcom/join/mgps/activity/DownloadSettingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/DownloadSettingActivity;->i:Landroid/widget/TextView;

    const-string v1, "\u5927\u4e8e100M\u63d0\u9192"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
