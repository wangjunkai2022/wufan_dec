.class Lcn/sharesdk/framework/AgreementDialog$3;
.super Ljava/lang/Object;
.source "AgreementDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/AgreementDialog;->setActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/AgreementDialog;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/AgreementDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/AgreementDialog$3;->a:Lcn/sharesdk/framework/AgreementDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/sharesdk/framework/AgreementDialog$3;->a:Lcn/sharesdk/framework/AgreementDialog;

    invoke-static {p1}, Lcn/sharesdk/framework/AgreementDialog;->access$000(Lcn/sharesdk/framework/AgreementDialog;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
