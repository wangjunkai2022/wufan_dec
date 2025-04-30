.class public final synthetic Lcom/papa91/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/papa91/activity/EmuBaseActivity;

.field public final synthetic b:Lcom/papa91/arc/bean/PopwindowBean;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/PopwindowBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/activity/a;->a:Lcom/papa91/activity/EmuBaseActivity;

    iput-object p2, p0, Lcom/papa91/activity/a;->b:Lcom/papa91/arc/bean/PopwindowBean;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/papa91/activity/a;->a:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v1, p0, Lcom/papa91/activity/a;->b:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-static {v0, v1, p1}, Lcom/papa91/activity/EmuBaseActivity;->a(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V

    return-void
.end method
