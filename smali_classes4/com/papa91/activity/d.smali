.class public final synthetic Lcom/papa91/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/activity/d;->a:Lcom/papa91/activity/EmuBaseActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/papa91/activity/d;->a:Lcom/papa91/activity/EmuBaseActivity;

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->f(Lcom/papa91/activity/EmuBaseActivity;)V

    return-void
.end method
