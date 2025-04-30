.class Lcom/join/mgps/activity/MYAccountReginActivity$b;
.super Ljava/lang/Object;
.source "MYAccountReginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MYAccountReginActivity;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MYAccountReginActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MYAccountReginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity$b;->a:Lcom/join/mgps/activity/MYAccountReginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountReginActivity$b;->a:Lcom/join/mgps/activity/MYAccountReginActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->F0(Lcom/join/mgps/activity/MYAccountReginActivity;I)I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity$b;->a:Lcom/join/mgps/activity/MYAccountReginActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->E0(Lcom/join/mgps/activity/MYAccountReginActivity;)V

    return-void
.end method
