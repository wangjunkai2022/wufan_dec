.class public final synthetic Lcom/papa91/activity/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/papa91/activity/EmuBaseActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/activity/h;->a:Lcom/papa91/activity/EmuBaseActivity;

    iput-object p2, p0, Lcom/papa91/activity/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa91/activity/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa91/activity/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/papa91/activity/h;->a:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v1, p0, Lcom/papa91/activity/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/activity/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/papa91/activity/h;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/papa91/activity/EmuBaseActivity;->b(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
