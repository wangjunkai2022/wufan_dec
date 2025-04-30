package com.fasterxml.jackson.core;

import external.org.apache.commons.lang3.d;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class Version implements Comparable<Version>, Serializable {
    private static final Version UNKNOWN_VERSION = new Version(0, 0, 0, null, null, null);
    private static final long serialVersionUID = 1;
    protected final String _artifactId;
    protected final String _groupId;
    protected final int _majorVersion;
    protected final int _minorVersion;
    protected final int _patchLevel;
    protected final String _snapshotInfo;

    @Deprecated
    public Version(int i2, int i4, int i5, String str) {
        this(i2, i4, i5, str, null, null);
    }

    public static Version unknownVersion() {
        return UNKNOWN_VERSION;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            Version version = (Version) obj;
            return version._majorVersion == this._majorVersion && version._minorVersion == this._minorVersion && version._patchLevel == this._patchLevel && version._artifactId.equals(this._artifactId) && version._groupId.equals(this._groupId);
        }
        return false;
    }

    public String getArtifactId() {
        return this._artifactId;
    }

    public String getGroupId() {
        return this._groupId;
    }

    public int getMajorVersion() {
        return this._majorVersion;
    }

    public int getMinorVersion() {
        return this._minorVersion;
    }

    public int getPatchLevel() {
        return this._patchLevel;
    }

    public int hashCode() {
        return this._artifactId.hashCode() ^ (((this._groupId.hashCode() + this._majorVersion) - this._minorVersion) + this._patchLevel);
    }

    public boolean isSnapshot() {
        String str = this._snapshotInfo;
        return str != null && str.length() > 0;
    }

    @Deprecated
    public boolean isUknownVersion() {
        return isUnknownVersion();
    }

    public boolean isUnknownVersion() {
        return this == UNKNOWN_VERSION;
    }

    public String toFullString() {
        return this._groupId + '/' + this._artifactId + '/' + toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this._majorVersion);
        sb.append(d.f65364a);
        sb.append(this._minorVersion);
        sb.append(d.f65364a);
        sb.append(this._patchLevel);
        if (isSnapshot()) {
            sb.append('-');
            sb.append(this._snapshotInfo);
        }
        return sb.toString();
    }

    public Version(int i2, int i4, int i5, String str, String str2, String str3) {
        this._majorVersion = i2;
        this._minorVersion = i4;
        this._patchLevel = i5;
        this._snapshotInfo = str;
        this._groupId = str2 == null ? "" : str2;
        this._artifactId = str3 == null ? "" : str3;
    }

    @Override // java.lang.Comparable
    public int compareTo(Version version) {
        if (version == this) {
            return 0;
        }
        int compareTo = this._groupId.compareTo(version._groupId);
        if (compareTo == 0) {
            int compareTo2 = this._artifactId.compareTo(version._artifactId);
            if (compareTo2 == 0) {
                int i2 = this._majorVersion - version._majorVersion;
                if (i2 == 0) {
                    int i4 = this._minorVersion - version._minorVersion;
                    return i4 == 0 ? this._patchLevel - version._patchLevel : i4;
                }
                return i2;
            }
            return compareTo2;
        }
        return compareTo;
    }
}
