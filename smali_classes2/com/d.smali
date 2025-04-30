.class public final synthetic Lcom/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/BaseFragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/BaseFragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/d;->a:Lcom/BaseFragmentActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/d;->a:Lcom/BaseFragmentActivity;

    invoke-static {v0}, Lcom/BaseFragmentActivity;->C0(Lcom/BaseFragmentActivity;)V

    return-void
.end method
