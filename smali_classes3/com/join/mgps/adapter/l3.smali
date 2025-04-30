.class public final synthetic Lcom/join/mgps/adapter/l3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public synthetic constructor <init>(Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/l3;->a:Landroid/view/animation/AlphaAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/adapter/l3;->a:Landroid/view/animation/AlphaAnimation;

    invoke-static {v0}, Lcom/join/mgps/adapter/m3;->f(Landroid/view/animation/AlphaAnimation;)V

    return-void
.end method
