package kotlin.io.path;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import external.org.apache.commons.lang3.d;
import io.netty.handler.codec.http.cookie.CookieHeaderNames;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.IOException;
import java.net.URI;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileStore;
import java.nio.file.FileSystem;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileAttributeView;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.UserPrincipal;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.WasExperimental;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.InlineOnly;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.text.StringsKt__StringsJVMKt;
import net.lingala.zip4j.util.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PathUtils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0016\u001a\r\u0010\u0001\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0002*\u00020\u0000H\u0087\b\u001a\u0014\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000H\u0007\u001a\u0014\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000H\u0007\u001a\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0000*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000H\u0007\u001a\u001f\u0010\u000b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\tH\u0087\b\u001a0\u0010\u000b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\f\"\u00020\rH\u0087\b¢\u0006\u0004\b\u000b\u0010\u000f\u001a(\u0010\u0011\u001a\u00020\t*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\b\u0011\u0010\u0012\u001a(\u0010\u0013\u001a\u00020\t*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\b\u0013\u0010\u0012\u001a(\u0010\u0014\u001a\u00020\t*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\b\u0014\u0010\u0012\u001a(\u0010\u0015\u001a\u00020\t*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\b\u0015\u0010\u0012\u001a\r\u0010\u0016\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a\r\u0010\u0017\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a\r\u0010\u0018\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a\r\u0010\u0019\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a\r\u0010\u001a\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a\u0015\u0010\u001c\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0000H\u0087\b\u001a\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00000\u001e*\u00020\u00002\b\b\u0002\u0010\u001d\u001a\u00020\u0002H\u0007\u001aA\u0010$\u001a\u00028\u0000\"\u0004\b\u0000\u0010 *\u00020\u00002\b\b\u0002\u0010\u001d\u001a\u00020\u00022\u0018\u0010#\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00000\"\u0012\u0004\u0012\u00028\u00000!H\u0087\bø\u0001\u0000¢\u0006\u0004\b$\u0010%\u001a.\u0010(\u001a\u00020&*\u00020\u00002\b\b\u0002\u0010\u001d\u001a\u00020\u00022\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020&0!H\u0087\bø\u0001\u0000\u001a\r\u0010*\u001a\u00020)*\u00020\u0000H\u0087\b\u001a\r\u0010+\u001a\u00020&*\u00020\u0000H\u0087\b\u001a\r\u0010,\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a0\u0010/\u001a\u00020\u0000*\u00020\u00002\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\b/\u00100\u001a0\u00101\u001a\u00020\u0000*\u00020\u00002\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\b1\u00100\u001a0\u00102\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\f\"\u00020\rH\u0087\b¢\u0006\u0004\b2\u0010\u000f\u001a\u001f\u00102\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\tH\u0087\b\u001a\r\u00104\u001a\u000203*\u00020\u0000H\u0087\b\u001a2\u00107\u001a\u0004\u0018\u000106*\u00020\u00002\u0006\u00105\u001a\u00020\u00022\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\b7\u00108\u001a:\u0010:\u001a\u00020\u0000*\u00020\u00002\u0006\u00105\u001a\u00020\u00022\b\u00109\u001a\u0004\u0018\u0001062\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\b:\u0010;\u001a6\u0010>\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010=\u0018\u0001*\u00020<*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\b>\u0010?\u001a4\u0010@\u001a\u00028\u0000\"\n\b\u0000\u0010=\u0018\u0001*\u00020<*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\b@\u0010?\u001a\u001c\u0010E\u001a\u00020D2\u0006\u0010A\u001a\u00020\u00002\n\u0010C\u001a\u0006\u0012\u0002\b\u00030BH\u0001\u001a4\u0010H\u001a\u00028\u0000\"\n\b\u0000\u0010G\u0018\u0001*\u00020F*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\bH\u0010I\u001a>\u0010H\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u0001060J*\u00020\u00002\u0006\u0010.\u001a\u00020\u00022\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\bH\u0010K\u001a(\u0010M\u001a\u00020L*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\bM\u0010N\u001a\u0015\u0010O\u001a\u00020\u0000*\u00020\u00002\u0006\u00109\u001a\u00020LH\u0087\b\u001a*\u0010Q\u001a\u0004\u0018\u00010P*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\bQ\u0010R\u001a\u0015\u0010S\u001a\u00020\u0000*\u00020\u00002\u0006\u00109\u001a\u00020PH\u0087\b\u001a.\u0010V\u001a\b\u0012\u0004\u0012\u00020U0T*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\f\"\u00020\u0010H\u0087\b¢\u0006\u0004\bV\u0010W\u001a\u001b\u0010X\u001a\u00020\u0000*\u00020\u00002\f\u00109\u001a\b\u0012\u0004\u0012\u00020U0TH\u0087\b\u001a\u0015\u0010Y\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000H\u0087\b\u001a8\u0010Z\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\bZ\u0010[\u001a\r\u0010\\\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a0\u0010]\u001a\u00020\u0000*\u00020\u00002\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\b]\u00100\u001aD\u0010`\u001a\u00020\u00002\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\u00022\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\b`\u0010a\u001aM\u0010`\u001a\u00020\u00002\b\u0010b\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\u00022\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0007¢\u0006\u0004\b`\u0010c\u001a8\u0010d\u001a\u00020\u00002\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u00022\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\bd\u0010e\u001aA\u0010d\u001a\u00020\u00002\b\u0010b\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u00022\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0007¢\u0006\u0004\bd\u0010f\u001a\u0015\u0010g\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010g\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0002H\u0087\n\u001a\u0011\u0010h\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u0002H\u0087\b\u001a,\u0010h\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00022\u0012\u0010i\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\f\"\u00020\u0002H\u0087\b¢\u0006\u0004\bh\u0010j\u001a\r\u0010l\u001a\u00020\u0000*\u00020kH\u0087\b\" \u0010q\u001a\u00020\u0002*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bo\u0010p\u001a\u0004\bm\u0010n\" \u0010t\u001a\u00020\u0002*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bs\u0010p\u001a\u0004\br\u0010n\" \u0010w\u001a\u00020\u0002*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bv\u0010p\u001a\u0004\bu\u0010n\" \u0010z\u001a\u00020\u0002*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\by\u0010p\u001a\u0004\bx\u0010n\"!\u0010}\u001a\u00020\u0002*\u00020\u00008Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b|\u0010p\u001a\u0004\b{\u0010n\"\"\u0010\u0080\u0001\u001a\u00020\u0002*\u00020\u00008Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u007f\u0010p\u001a\u0004\b~\u0010n\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0081\u0001"}, d2 = {"Ljava/nio/file/Path;", "absolute", "", "absolutePathString", "base", "relativeTo", "relativeToOrSelf", "relativeToOrNull", TypedValues.AttributesType.S_TARGET, "", "overwrite", "copyTo", "", "Ljava/nio/file/CopyOption;", "options", "(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;", "Ljava/nio/file/LinkOption;", "exists", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z", "notExists", "isRegularFile", "isDirectory", "isSymbolicLink", "isExecutable", "isHidden", "isReadable", "isWritable", "other", "isSameFileAs", "glob", "", "listDirectoryEntries", "T", "Lkotlin/Function1;", "Lkotlin/sequences/Sequence;", "block", "useDirectoryEntries", "(Ljava/nio/file/Path;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "", "action", "forEachDirectoryEntry", "", "fileSize", "deleteExisting", "deleteIfExists", "Ljava/nio/file/attribute/FileAttribute;", "attributes", "createDirectory", "(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "createDirectories", "moveTo", "Ljava/nio/file/FileStore;", "fileStore", "attribute", "", "getAttribute", "(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;", "value", "setAttribute", "(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;", "Ljava/nio/file/attribute/FileAttributeView;", "V", "fileAttributesViewOrNull", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;", "fileAttributesView", "path", "Ljava/lang/Class;", "attributeViewClass", "", "fileAttributeViewNotAvailable", "Ljava/nio/file/attribute/BasicFileAttributes;", "A", "readAttributes", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;", "", "(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;", "Ljava/nio/file/attribute/FileTime;", "getLastModifiedTime", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;", "setLastModifiedTime", "Ljava/nio/file/attribute/UserPrincipal;", "getOwner", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;", "setOwner", "", "Ljava/nio/file/attribute/PosixFilePermission;", "getPosixFilePermissions", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;", "setPosixFilePermissions", "createLinkPointingTo", "createSymbolicLinkPointingTo", "(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "readSymbolicLink", "createFile", "prefix", "suffix", "createTempFile", "(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "directory", "(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "createTempDirectory", "(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "div", CookieHeaderNames.PATH, "subpaths", "(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;", "Ljava/net/URI;", "toPath", "getNameWithoutExtension", "(Ljava/nio/file/Path;)Ljava/lang/String;", "getNameWithoutExtension$annotations", "(Ljava/nio/file/Path;)V", "nameWithoutExtension", "getName", "getName$annotations", "name", "getExtension", "getExtension$annotations", "extension", "getInvariantSeparatorsPathString", "getInvariantSeparatorsPathString$annotations", "invariantSeparatorsPathString", "getPathString", "getPathString$annotations", "pathString", "getInvariantSeparatorsPath", "getInvariantSeparatorsPath$annotations", "invariantSeparatorsPath", "kotlin-stdlib-jdk7"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/io/path/PathsKt")
/* loaded from: classes.dex */
class PathsKt__PathUtilsKt extends PathsKt__PathReadWriteKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path Path(String str) {
        Path path = Paths.get(str, new String[0]);
        Intrinsics.checkNotNullExpressionValue(path, "Paths.get(path)");
        return path;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path absolute(Path path) {
        Path absolutePath = path.toAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "toAbsolutePath()");
        return absolutePath;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final String absolutePathString(Path path) {
        return path.toAbsolutePath().toString();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path copyTo(Path path, Path path2, boolean z3) throws IOException {
        CopyOption[] copyOptionArr = z3 ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path copy = Files.copy(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(copy, "Files.copy(this, target, *options)");
        return copy;
    }

    static /* synthetic */ Path copyTo$default(Path path, Path path2, boolean z3, int i2, Object obj) throws IOException {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        CopyOption[] copyOptionArr = z3 ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path copy = Files.copy(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(copy, "Files.copy(this, target, *options)");
        return copy;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final Path createDirectories(Path path, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path createDirectories = Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "Files.createDirectories(this, *attributes)");
        return createDirectories;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final Path createDirectory(Path path, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path createDirectory = Files.createDirectory(path, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Intrinsics.checkNotNullExpressionValue(createDirectory, "Files.createDirectory(this, *attributes)");
        return createDirectory;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final Path createFile(Path path, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path createFile = Files.createFile(path, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Intrinsics.checkNotNullExpressionValue(createFile, "Files.createFile(this, *attributes)");
        return createFile;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path createLinkPointingTo(Path path, Path path2) throws IOException {
        Path createLink = Files.createLink(path, path2);
        Intrinsics.checkNotNullExpressionValue(createLink, "Files.createLink(this, target)");
        return createLink;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final Path createSymbolicLinkPointingTo(Path path, Path path2, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path createSymbolicLink = Files.createSymbolicLink(path, path2, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Intrinsics.checkNotNullExpressionValue(createSymbolicLink, "Files.createSymbolicLink…his, target, *attributes)");
        return createSymbolicLink;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final Path createTempDirectory(String str, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path createTempDirectory = Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Intrinsics.checkNotNullExpressionValue(createTempDirectory, "Files.createTempDirectory(prefix, *attributes)");
        return createTempDirectory;
    }

    static /* synthetic */ Path createTempDirectory$default(String str, FileAttribute[] fileAttributeArr, int i2, Object obj) throws IOException {
        if ((i2 & 1) != 0) {
            str = null;
        }
        Path createTempDirectory = Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Intrinsics.checkNotNullExpressionValue(createTempDirectory, "Files.createTempDirectory(prefix, *attributes)");
        return createTempDirectory;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final Path createTempFile(String str, String str2, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path createTempFile = Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Intrinsics.checkNotNullExpressionValue(createTempFile, "Files.createTempFile(prefix, suffix, *attributes)");
        return createTempFile;
    }

    static /* synthetic */ Path createTempFile$default(String str, String str2, FileAttribute[] fileAttributeArr, int i2, Object obj) throws IOException {
        if ((i2 & 1) != 0) {
            str = null;
        }
        if ((i2 & 2) != 0) {
            str2 = null;
        }
        Path createTempFile = Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Intrinsics.checkNotNullExpressionValue(createTempFile, "Files.createTempFile(prefix, suffix, *attributes)");
        return createTempFile;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final void deleteExisting(Path path) throws IOException {
        Files.delete(path);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final boolean deleteIfExists(Path path) throws IOException {
        return Files.deleteIfExists(path);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path div(Path div, Path path) {
        Intrinsics.checkNotNullParameter(div, "$this$div");
        Path resolve = div.resolve(path);
        Intrinsics.checkNotNullExpressionValue(resolve, "this.resolve(other)");
        return resolve;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final boolean exists(Path path, LinkOption... linkOptionArr) {
        return Files.exists(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @PublishedApi
    @NotNull
    public static final Void fileAttributeViewNotAvailable(@NotNull Path path, @NotNull Class<?> attributeViewClass) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(attributeViewClass, "attributeViewClass");
        throw new UnsupportedOperationException("The desired attribute view type " + attributeViewClass + " is not available for the file " + path + d.f65364a);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final /* synthetic */ <V extends FileAttributeView> V fileAttributesView(Path path, LinkOption... linkOptionArr) {
        Intrinsics.reifiedOperationMarker(4, "V");
        V v3 = (V) Files.getFileAttributeView(path, FileAttributeView.class, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        if (v3 != null) {
            return v3;
        }
        Intrinsics.reifiedOperationMarker(4, "V");
        fileAttributeViewNotAvailable(path, FileAttributeView.class);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final /* synthetic */ <V extends FileAttributeView> V fileAttributesViewOrNull(Path path, LinkOption... linkOptionArr) {
        Intrinsics.reifiedOperationMarker(4, "V");
        return (V) Files.getFileAttributeView(path, FileAttributeView.class, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final long fileSize(Path path) throws IOException {
        return Files.size(path);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final FileStore fileStore(Path path) throws IOException {
        FileStore fileStore = Files.getFileStore(path);
        Intrinsics.checkNotNullExpressionValue(fileStore, "Files.getFileStore(this)");
        return fileStore;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final void forEachDirectoryEntry(Path path, String str, Function1<? super Path, Unit> function1) throws IOException {
        DirectoryStream<Path> it2 = Files.newDirectoryStream(path, str);
        try {
            Intrinsics.checkNotNullExpressionValue(it2, "it");
            for (Path path2 : it2) {
                function1.invoke(path2);
            }
            Unit unit = Unit.INSTANCE;
            InlineMarker.finallyStart(1);
            if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                CloseableKt.closeFinally(it2, null);
            } else if (it2 != null) {
                it2.close();
            }
            InlineMarker.finallyEnd(1);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                    CloseableKt.closeFinally(it2, th);
                } else if (it2 != null) {
                    try {
                        it2.close();
                    } catch (Throwable unused) {
                    }
                }
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
    }

    static /* synthetic */ void forEachDirectoryEntry$default(Path path, String str, Function1 function1, int i2, Object obj) throws IOException {
        if ((i2 & 1) != 0) {
            str = WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD;
        }
        DirectoryStream<Path> it2 = Files.newDirectoryStream(path, str);
        try {
            Intrinsics.checkNotNullExpressionValue(it2, "it");
            for (Path path2 : it2) {
                function1.invoke(path2);
            }
            Unit unit = Unit.INSTANCE;
            InlineMarker.finallyStart(1);
            if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                CloseableKt.closeFinally(it2, null);
            } else if (it2 != null) {
                it2.close();
            }
            InlineMarker.finallyEnd(1);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                    CloseableKt.closeFinally(it2, th);
                } else if (it2 != null) {
                    try {
                        it2.close();
                    } catch (Throwable unused) {
                    }
                }
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Object getAttribute(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        return Files.getAttribute(path, str, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
        r2 = kotlin.text.StringsKt__StringsKt.substringAfterLast(r2, (char) external.org.apache.commons.lang3.d.f65364a, "");
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String getExtension(@org.jetbrains.annotations.NotNull java.nio.file.Path r2) {
        /*
            java.lang.String r0 = "$this$extension"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.nio.file.Path r2 = r2.getFileName()
            java.lang.String r0 = ""
            if (r2 == 0) goto L1c
            java.lang.String r2 = r2.toString()
            if (r2 == 0) goto L1c
            r1 = 46
            java.lang.String r2 = kotlin.text.StringsKt.substringAfterLast(r2, r1, r0)
            if (r2 == 0) goto L1c
            r0 = r2
        L1c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.path.PathsKt__PathUtilsKt.getExtension(java.nio.file.Path):java.lang.String");
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static /* synthetic */ void getExtension$annotations(Path path) {
    }

    private static final String getInvariantSeparatorsPath(Path path) {
        return getInvariantSeparatorsPathString(path);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @Deprecated(level = DeprecationLevel.ERROR, message = "Use invariantSeparatorsPathString property instead.", replaceWith = @ReplaceWith(expression = "invariantSeparatorsPathString", imports = {}))
    @ExperimentalPathApi
    public static /* synthetic */ void getInvariantSeparatorsPath$annotations(Path path) {
    }

    @NotNull
    public static final String getInvariantSeparatorsPathString(@NotNull Path invariantSeparatorsPathString) {
        String replace$default;
        Intrinsics.checkNotNullParameter(invariantSeparatorsPathString, "$this$invariantSeparatorsPathString");
        FileSystem fileSystem = invariantSeparatorsPathString.getFileSystem();
        Intrinsics.checkNotNullExpressionValue(fileSystem, "fileSystem");
        String separator = fileSystem.getSeparator();
        if (!Intrinsics.areEqual(separator, e.F0)) {
            String obj = invariantSeparatorsPathString.toString();
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            replace$default = StringsKt__StringsJVMKt.replace$default(obj, separator, e.F0, false, 4, (Object) null);
            return replace$default;
        }
        return invariantSeparatorsPathString.toString();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static /* synthetic */ void getInvariantSeparatorsPathString$annotations(Path path) {
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final FileTime getLastModifiedTime(Path path, LinkOption... linkOptionArr) throws IOException {
        FileTime lastModifiedTime = Files.getLastModifiedTime(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(lastModifiedTime, "Files.getLastModifiedTime(this, *options)");
        return lastModifiedTime;
    }

    @NotNull
    public static final String getName(@NotNull Path name) {
        Intrinsics.checkNotNullParameter(name, "$this$name");
        Path fileName = name.getFileName();
        String obj = fileName != null ? fileName.toString() : null;
        return obj != null ? obj : "";
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static /* synthetic */ void getName$annotations(Path path) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0011, code lost:
        r3 = kotlin.text.StringsKt__StringsKt.substringBeforeLast$default(r3, com.join.mgps.Util.g0.f27568a, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String getNameWithoutExtension(@org.jetbrains.annotations.NotNull java.nio.file.Path r3) {
        /*
            java.lang.String r0 = "$this$nameWithoutExtension"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.nio.file.Path r3 = r3.getFileName()
            if (r3 == 0) goto L1c
            java.lang.String r3 = r3.toString()
            if (r3 == 0) goto L1c
            r0 = 2
            java.lang.String r1 = "."
            r2 = 0
            java.lang.String r3 = kotlin.text.StringsKt.substringBeforeLast$default(r3, r1, r2, r0, r2)
            if (r3 == 0) goto L1c
            goto L1e
        L1c:
            java.lang.String r3 = ""
        L1e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.path.PathsKt__PathUtilsKt.getNameWithoutExtension(java.nio.file.Path):java.lang.String");
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static /* synthetic */ void getNameWithoutExtension$annotations(Path path) {
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final UserPrincipal getOwner(Path path, LinkOption... linkOptionArr) throws IOException {
        return Files.getOwner(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    private static final String getPathString(Path path) {
        return path.toString();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    public static /* synthetic */ void getPathString$annotations(Path path) {
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final Set<PosixFilePermission> getPosixFilePermissions(Path path, LinkOption... linkOptionArr) throws IOException {
        Set<PosixFilePermission> posixFilePermissions = Files.getPosixFilePermissions(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(posixFilePermissions, "Files.getPosixFilePermissions(this, *options)");
        return posixFilePermissions;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final boolean isDirectory(Path path, LinkOption... linkOptionArr) {
        return Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final boolean isExecutable(Path path) {
        return Files.isExecutable(path);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final boolean isHidden(Path path) throws IOException {
        return Files.isHidden(path);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final boolean isReadable(Path path) {
        return Files.isReadable(path);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final boolean isRegularFile(Path path, LinkOption... linkOptionArr) {
        return Files.isRegularFile(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final boolean isSameFileAs(Path path, Path path2) throws IOException {
        return Files.isSameFile(path, path2);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final boolean isSymbolicLink(Path path) {
        return Files.isSymbolicLink(path);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final boolean isWritable(Path path) {
        return Files.isWritable(path);
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static final List<Path> listDirectoryEntries(@NotNull Path listDirectoryEntries, @NotNull String glob) throws IOException {
        List<Path> list;
        Intrinsics.checkNotNullParameter(listDirectoryEntries, "$this$listDirectoryEntries");
        Intrinsics.checkNotNullParameter(glob, "glob");
        DirectoryStream<Path> it2 = Files.newDirectoryStream(listDirectoryEntries, glob);
        try {
            Intrinsics.checkNotNullExpressionValue(it2, "it");
            list = CollectionsKt___CollectionsKt.toList(it2);
            CloseableKt.closeFinally(it2, null);
            return list;
        } finally {
        }
    }

    public static /* synthetic */ List listDirectoryEntries$default(Path path, String str, int i2, Object obj) throws IOException {
        if ((i2 & 1) != 0) {
            str = WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD;
        }
        return listDirectoryEntries(path, str);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path moveTo(Path path, Path path2, CopyOption... copyOptionArr) throws IOException {
        Path move = Files.move(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(move, "Files.move(this, target, *options)");
        return move;
    }

    static /* synthetic */ Path moveTo$default(Path path, Path path2, boolean z3, int i2, Object obj) throws IOException {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        CopyOption[] copyOptionArr = z3 ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path move = Files.move(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(move, "Files.move(this, target, *options)");
        return move;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final boolean notExists(Path path, LinkOption... linkOptionArr) {
        return Files.notExists(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final /* synthetic */ <A extends BasicFileAttributes> A readAttributes(Path path, LinkOption... linkOptionArr) throws IOException {
        Intrinsics.reifiedOperationMarker(4, "A");
        A a4 = (A) Files.readAttributes(path, BasicFileAttributes.class, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(a4, "Files.readAttributes(thi… A::class.java, *options)");
        return a4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path readSymbolicLink(Path path) throws IOException {
        Path readSymbolicLink = Files.readSymbolicLink(path);
        Intrinsics.checkNotNullExpressionValue(readSymbolicLink, "Files.readSymbolicLink(this)");
        return readSymbolicLink;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @NotNull
    public static final Path relativeTo(@NotNull Path relativeTo, @NotNull Path base) {
        Intrinsics.checkNotNullParameter(relativeTo, "$this$relativeTo");
        Intrinsics.checkNotNullParameter(base, "base");
        try {
            return PathRelativizer.INSTANCE.tryRelativeTo(relativeTo, base);
        } catch (IllegalArgumentException e4) {
            String message = e4.getMessage();
            throw new IllegalArgumentException(Intrinsics.stringPlus(message, "\nthis path: " + relativeTo + "\nbase path: " + base), e4);
        }
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @Nullable
    public static final Path relativeToOrNull(@NotNull Path relativeToOrNull, @NotNull Path base) {
        Intrinsics.checkNotNullParameter(relativeToOrNull, "$this$relativeToOrNull");
        Intrinsics.checkNotNullParameter(base, "base");
        try {
            return PathRelativizer.INSTANCE.tryRelativeTo(relativeToOrNull, base);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @NotNull
    public static final Path relativeToOrSelf(@NotNull Path relativeToOrSelf, @NotNull Path base) {
        Intrinsics.checkNotNullParameter(relativeToOrSelf, "$this$relativeToOrSelf");
        Intrinsics.checkNotNullParameter(base, "base");
        Path relativeToOrNull = relativeToOrNull(relativeToOrSelf, base);
        return relativeToOrNull != null ? relativeToOrNull : relativeToOrSelf;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path setAttribute(Path path, String str, Object obj, LinkOption... linkOptionArr) throws IOException {
        Path attribute = Files.setAttribute(path, str, obj, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(attribute, "Files.setAttribute(this,…tribute, value, *options)");
        return attribute;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path setLastModifiedTime(Path path, FileTime fileTime) throws IOException {
        Path lastModifiedTime = Files.setLastModifiedTime(path, fileTime);
        Intrinsics.checkNotNullExpressionValue(lastModifiedTime, "Files.setLastModifiedTime(this, value)");
        return lastModifiedTime;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path setOwner(Path path, UserPrincipal userPrincipal) throws IOException {
        Path owner = Files.setOwner(path, userPrincipal);
        Intrinsics.checkNotNullExpressionValue(owner, "Files.setOwner(this, value)");
        return owner;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final Path setPosixFilePermissions(Path path, Set<? extends PosixFilePermission> set) throws IOException {
        Path posixFilePermissions = Files.setPosixFilePermissions(path, set);
        Intrinsics.checkNotNullExpressionValue(posixFilePermissions, "Files.setPosixFilePermissions(this, value)");
        return posixFilePermissions;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path toPath(URI uri) {
        Path path = Paths.get(uri);
        Intrinsics.checkNotNullExpressionValue(path, "Paths.get(this)");
        return path;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final <T> T useDirectoryEntries(Path path, String str, Function1<? super Sequence<? extends Path>, ? extends T> function1) throws IOException {
        Sequence asSequence;
        DirectoryStream<Path> it2 = Files.newDirectoryStream(path, str);
        try {
            Intrinsics.checkNotNullExpressionValue(it2, "it");
            asSequence = CollectionsKt___CollectionsKt.asSequence(it2);
            T invoke = function1.invoke(asSequence);
            InlineMarker.finallyStart(1);
            if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                CloseableKt.closeFinally(it2, null);
            } else if (it2 != null) {
                it2.close();
            }
            InlineMarker.finallyEnd(1);
            return invoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                    CloseableKt.closeFinally(it2, th);
                } else if (it2 != null) {
                    try {
                        it2.close();
                    } catch (Throwable unused) {
                    }
                }
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
    }

    static /* synthetic */ Object useDirectoryEntries$default(Path path, String str, Function1 function1, int i2, Object obj) throws IOException {
        Sequence asSequence;
        if ((i2 & 1) != 0) {
            str = WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD;
        }
        DirectoryStream<Path> it2 = Files.newDirectoryStream(path, str);
        try {
            Intrinsics.checkNotNullExpressionValue(it2, "it");
            asSequence = CollectionsKt___CollectionsKt.asSequence(it2);
            Object invoke = function1.invoke(asSequence);
            InlineMarker.finallyStart(1);
            if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                CloseableKt.closeFinally(it2, null);
            } else if (it2 != null) {
                it2.close();
            }
            InlineMarker.finallyEnd(1);
            return invoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                    CloseableKt.closeFinally(it2, th);
                } else if (it2 != null) {
                    try {
                        it2.close();
                    } catch (Throwable unused) {
                    }
                }
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path Path(String str, String... strArr) {
        Path path = Paths.get(str, (String[]) Arrays.copyOf(strArr, strArr.length));
        Intrinsics.checkNotNullExpressionValue(path, "Paths.get(base, *subpaths)");
        return path;
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static final Path createTempDirectory(@Nullable Path path, @Nullable String str, @NotNull FileAttribute<?>... attributes) throws IOException {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        if (path != null) {
            Path createTempDirectory = Files.createTempDirectory(path, str, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
            Intrinsics.checkNotNullExpressionValue(createTempDirectory, "Files.createTempDirector…ory, prefix, *attributes)");
            return createTempDirectory;
        }
        Path createTempDirectory2 = Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        Intrinsics.checkNotNullExpressionValue(createTempDirectory2, "Files.createTempDirectory(prefix, *attributes)");
        return createTempDirectory2;
    }

    public static /* synthetic */ Path createTempDirectory$default(Path path, String str, FileAttribute[] fileAttributeArr, int i2, Object obj) throws IOException {
        if ((i2 & 2) != 0) {
            str = null;
        }
        return createTempDirectory(path, str, fileAttributeArr);
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static final Path createTempFile(@Nullable Path path, @Nullable String str, @Nullable String str2, @NotNull FileAttribute<?>... attributes) throws IOException {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        if (path != null) {
            Path createTempFile = Files.createTempFile(path, str, str2, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
            Intrinsics.checkNotNullExpressionValue(createTempFile, "Files.createTempFile(dir…fix, suffix, *attributes)");
            return createTempFile;
        }
        Path createTempFile2 = Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        Intrinsics.checkNotNullExpressionValue(createTempFile2, "Files.createTempFile(prefix, suffix, *attributes)");
        return createTempFile2;
    }

    public static /* synthetic */ Path createTempFile$default(Path path, String str, String str2, FileAttribute[] fileAttributeArr, int i2, Object obj) throws IOException {
        if ((i2 & 2) != 0) {
            str = null;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        return createTempFile(path, str, str2, fileAttributeArr);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path div(Path div, String str) {
        Intrinsics.checkNotNullParameter(div, "$this$div");
        Path resolve = div.resolve(str);
        Intrinsics.checkNotNullExpressionValue(resolve, "this.resolve(other)");
        return resolve;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path moveTo(Path path, Path path2, boolean z3) throws IOException {
        CopyOption[] copyOptionArr = z3 ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path move = Files.move(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(move, "Files.move(this, target, *options)");
        return move;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    private static final Map<String, Object> readAttributes(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        Map<String, Object> readAttributes = Files.readAttributes(path, str, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(readAttributes, "Files.readAttributes(this, attributes, *options)");
        return readAttributes;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @InlineOnly
    private static final Path copyTo(Path path, Path path2, CopyOption... copyOptionArr) throws IOException {
        Path copy = Files.copy(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(copy, "Files.copy(this, target, *options)");
        return copy;
    }
}
