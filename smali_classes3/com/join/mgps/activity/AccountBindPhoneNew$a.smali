.class Lcom/join/mgps/activity/AccountBindPhoneNew$a;
.super Ljava/lang/Object;
.source "AccountBindPhoneNew.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountBindPhoneNew;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/AccountBindPhoneNew;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$a;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$a;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget-object p2, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->i:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/join/mgps/activity/AccountBindPhoneNew;->G0(Lcom/join/mgps/activity/AccountBindPhoneNew;Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method
