.class public final synthetic Lcom/papa91/arc/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic a:Lcom/papa91/arc/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/papa91/arc/a;

    invoke-direct {v0}, Lcom/papa91/arc/a;-><init>()V

    sput-object v0, Lcom/papa91/arc/a;->a:Lcom/papa91/arc/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 0

    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->e(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
