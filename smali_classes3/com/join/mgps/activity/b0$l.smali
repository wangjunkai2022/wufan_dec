.class Lcom/join/mgps/activity/b0$l;
.super Ljava/lang/Object;
.source "GameDetialModleThreeActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b0;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/b0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/b0$l;->a:Lcom/join/mgps/activity/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/b0$l;->a:Lcom/join/mgps/activity/b0;

    iget-object p1, p1, Lcom/join/mgps/activity/b0;->w0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->noFavoriteTips()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method
