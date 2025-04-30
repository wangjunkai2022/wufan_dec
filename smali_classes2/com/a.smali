.class public final synthetic Lcom/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a;->a:Lcom/BaseActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/a;->a:Lcom/BaseActivity;

    invoke-static {v0}, Lcom/BaseActivity;->D0(Lcom/BaseActivity;)V

    return-void
.end method
