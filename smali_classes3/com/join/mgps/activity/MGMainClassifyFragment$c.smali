.class Lcom/join/mgps/activity/MGMainClassifyFragment$c;
.super Ljava/lang/Object;
.source "MGMainClassifyFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainClassifyFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$c;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$c;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->j0()V

    :cond_0
    return-void
.end method
