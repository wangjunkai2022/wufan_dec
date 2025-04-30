.class Lorg/ppsspp/ppsspp/PpssppActivity$b;
.super Ljava/lang/Object;
.source "PpssppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ppsspp/ppsspp/PpssppActivity;->postCommand(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/ppsspp/ppsspp/PpssppActivity;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/PpssppActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/PpssppActivity$b;->c:Lorg/ppsspp/ppsspp/PpssppActivity;

    iput-object p2, p0, Lorg/ppsspp/ppsspp/PpssppActivity$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/ppsspp/ppsspp/PpssppActivity$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/PpssppActivity$b;->c:Lorg/ppsspp/ppsspp/PpssppActivity;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/PpssppActivity$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/ppsspp/ppsspp/PpssppActivity$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/ppsspp/ppsspp/NativeActivity;->processCommand(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
