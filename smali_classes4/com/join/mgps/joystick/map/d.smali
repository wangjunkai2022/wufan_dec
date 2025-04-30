.class public Lcom/join/mgps/joystick/map/d;
.super Ljava/lang/Object;
.source "KeyMapManager.java"


# static fields
.field private static b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field public static d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field static e:[Lcom/join/mgps/Util/t;

.field private static f:Landroid/content/Context;


# instance fields
.field a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/MG/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/d;->b:Ljava/lang/String;

    .line 2
    const-class v0, Lcom/join/mgps/joystick/map/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/d;->c:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/join/mgps/Util/t;

    .line 3
    sput-object v0, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/join/mgps/joystick/map/d;->a:[I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/MG/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/joystick/map/d;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/join/mgps/joystick/map/d;->f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static b(ILandroid/view/KeyEvent;)Lcom/join/mgps/joystick/map/c;
    .locals 7

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/d;->d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/joystick/map/c;

    invoke-direct {v0}, Lcom/join/mgps/joystick/map/c;-><init>()V

    .line 3
    sget-object v1, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    aget-object v1, v1, p0

    if-nez v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {v0, p1}, Lcom/join/mgps/joystick/map/c;->h(Landroid/view/InputEvent;)V

    .line 5
    sget-object v1, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    aget-object v1, v1, p0

    const-string v2, "KEY"

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/Util/t$c;->d()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "null"

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v3}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 10
    :goto_0
    invoke-virtual {v0, v3}, Lcom/join/mgps/joystick/map/c;->e(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 11
    sget-object v1, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    aget-object p0, v1, p0

    sget-object v1, Lcom/join/mgps/joystick/map/d;->d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v1, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/Util/t$c;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 13
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v2}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v4, v2

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyCode="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " val="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v4}, Lcom/join/mgps/joystick/map/c;->f(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/joystick/map/c;->g(I)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/join/mgps/joystick/map/d;->d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    invoke-static {v1}, Lcom/join/mgps/joystick/map/d;->f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    .line 3
    sget-object v1, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 4
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v2}, Lcom/join/mgps/joystick/map/d;->e(Lcom/join/mgps/Util/t$c;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/t;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/Util/t$c;->d()Ljava/util/Set;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v1}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static d(I)Ljava/io/File;
    .locals 4

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap;->inifiles:[Ljava/lang/String;

    aget-object v1, v0, p0

    if-eqz v1, :cond_1

    aget-object v1, v0, p0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/joystick/map/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Lcom/join/mgps/Util/t$c;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/t$c;->a:Ljava/lang/String;

    const-string v0, "KEY"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "EMU_KEY_MAP"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->getEmuMap(Ljava/lang/String;)Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v2, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 6
    :cond_2
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v2, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->SFC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v2, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v2, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 9
    :cond_5
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v2, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 10
    :cond_6
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->MD:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v2, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    .line 11
    :cond_7
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PS:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v2, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0

    .line 12
    :cond_8
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v2, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    .line 13
    :cond_9
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v2, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_a
    :goto_1
    if-nez v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V
    .locals 4

    const-class v0, Lcom/join/mgps/joystick/map/d;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/MG/config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/join/mgps/joystick/map/d;->b:Ljava/lang/String;

    .line 2
    sput-object p0, Lcom/join/mgps/joystick/map/d;->d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    const/4 p0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    array-length v1, v1

    if-ge p0, v1, :cond_4

    .line 4
    invoke-static {p0}, Lcom/join/mgps/joystick/map/d;->d(I)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v1, v3}, Ljava/io/File;->setReadable(Z)Z

    .line 11
    invoke-virtual {v1, v3}, Ljava/io/File;->setWritable(Z)Z

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 13
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    :cond_3
    :goto_1
    sget-object v1, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    new-instance v3, Lcom/join/mgps/Util/t;

    invoke-direct {v3, v2}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, p0

    .line 15
    invoke-static {p0}, Lcom/join/mgps/joystick/map/d;->h(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 16
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static declared-synchronized g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/join/mgps/joystick/map/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    aget-object p0, v1, p0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/Util/t;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/Util/t;->j()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static h(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    aget-object p0, v0, p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap;->sections:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 3
    aget-object v1, v1, v0

    .line 4
    invoke-virtual {p0, v1}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v2}, Lcom/join/mgps/joystick/map/d;->e(Lcom/join/mgps/Util/t$c;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/Util/t;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    if-nez v2, :cond_1

    .line 7
    new-instance v2, Lcom/join/mgps/Util/t$c;

    invoke-direct {v2, v1}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    .line 9
    invoke-static {v2}, Lcom/join/mgps/joystick/map/d;->i(Lcom/join/mgps/Util/t$c;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static i(Lcom/join/mgps/Util/t$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t$c;->a:Ljava/lang/String;

    const-string v1, "KEY"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    :goto_0
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap;->keysKey:[Ljava/lang/String;

    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 4
    aget-object v0, v0, v2

    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap;->defJoystickKeys:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "EMU_KEY_MAP"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    :goto_1
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap;->emuKeysKey:[Ljava/lang/String;

    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 7
    aget-object v0, v0, v2

    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap;->emuDefKeysValue:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->getEmuMap(Ljava/lang/String;)Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v0, v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static declared-synchronized j()V
    .locals 5

    const-class v0, Lcom/join/mgps/joystick/map/d;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    sget-object v2, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/join/mgps/Util/t;->j()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v2, Lcom/join/mgps/joystick/map/d;->f:Landroid/content/Context;

    sget-object v3, Lcom/join/mgps/joystick/map/d;->d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    invoke-static {v1}, Lcom/join/mgps/joystick/map/d;->d(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/join/mgps/joystick/map/d;->k(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 5
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private static k(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/join/mgps/joystick/KeyMapActions;

    const-string v1, "saveStat"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static varargs l(I[Ljava/lang/Boolean;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/d;->d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    .line 2
    sget-object v0, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    aget-object v0, v0, p0

    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap;->emuKeysKey:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const-string v4, "EMU_KEY_MAP"

    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/Util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/join/mgps/Util/r1;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz p1, :cond_0

    .line 3
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 4
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5
    aget-object p1, v1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v4, p1, v1}, Lcom/join/mgps/joystick/map/d;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static m(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/join/mgps/joystick/map/KeyMap$EmuMap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/join/mgps/joystick/map/d;->f:Landroid/content/Context;

    .line 2
    sput-object p1, Lcom/join/mgps/joystick/map/d;->d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/join/mgps/joystick/map/d;->n(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/d;->d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    if-eqz v5, :cond_1

    .line 11
    aget-object v3, v3, v4

    invoke-virtual {v3, p0, v1, v2}, Lcom/join/mgps/Util/t;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lcom/join/mgps/joystick/map/d;->j()V

    return-void
.end method

.method public static o(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/join/mgps/joystick/map/KeyMap$EmuMap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/join/mgps/joystick/map/d;->f:Landroid/content/Context;

    .line 2
    sput-object p1, Lcom/join/mgps/joystick/map/d;->d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/join/mgps/joystick/map/d;->p(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/d;->d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/join/mgps/joystick/map/d;->e:[Lcom/join/mgps/Util/t;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    if-eqz v5, :cond_1

    .line 11
    aget-object v3, v3, v4

    invoke-virtual {v3, p0, v2, v1}, Lcom/join/mgps/Util/t;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lcom/join/mgps/joystick/map/d;->j()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/d;->d:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
