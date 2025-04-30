.class public Lcom/heepay/plugin/a/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heepay/plugin/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "log_msg"

.field public static b:Ljava/lang/String; = "log_level"

.field public static c:Ljava/lang/String; = "debug"

.field public static d:Ljava/lang/String; = "warn"

.field public static e:Ljava/lang/String; = "info"

.field public static f:Ljava/lang/String; = "error"

.field public static g:Ljava/lang/String; = "fatal"

.field public static h:Ljava/lang/String; = "trace"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method
