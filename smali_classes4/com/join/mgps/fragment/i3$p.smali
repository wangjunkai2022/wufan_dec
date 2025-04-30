.class Lcom/join/mgps/fragment/i3$p;
.super Ljava/lang/Object;
.source "MyArchiveFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i3;->l0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/i3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$p;->a:Lcom/join/mgps/fragment/i3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$p;->a:Lcom/join/mgps/fragment/i3;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/join/mgps/fragment/i3;->Q(Lcom/join/mgps/fragment/i3;Z)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$p;->a:Lcom/join/mgps/fragment/i3;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/join/mgps/fragment/i3;->Q(Lcom/join/mgps/fragment/i3;Z)Z

    :goto_0
    return-void
.end method
