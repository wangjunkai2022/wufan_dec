.class Lcom/papa91/arc/EmuActivity_psp$2;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->postCommand(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$param:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$2;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iput-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$2;->val$cmd:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa91/arc/EmuActivity_psp$2;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$2;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$2;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp$2;->val$param:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/EmuActivity_psp;->processCommand(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
