.class Lcom/join/mgps/activity/GamePaiWeiActivty$b;
.super Ljava/lang/Object;
.source "GamePaiWeiActivty.java"

# interfaces
.implements Lcom/join/mgps/dialog/w1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$b;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$b;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    iget-object v0, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->u0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->rankNotify()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$b;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-static {v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->n(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    return-void
.end method
