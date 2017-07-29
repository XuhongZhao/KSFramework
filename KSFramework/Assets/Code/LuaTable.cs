using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;


public class LuaTable
{

    public LuaTable()
    {
    }

    // no boxing version get
    public void Get<TKey, TValue>(TKey key, out TValue value)
    {
        value = default(TValue);
    }

    //no boxing version set
    public void Set<TKey, TValue>(TKey key, TValue value)
    {

    }


    public T GetInPath<T>(string path)
    {
        return default(T);
    }

    public void SetInPath<T>(string path, T val)
    {

    }

    [Obsolete("use no boxing version: GetInPath/SetInPath Get/Set instead!")]
    public object this[string field]
    {
        get
        {
            return GetInPath<object>(field);
        }
        set
        {
            SetInPath(field, value);
        }
    }

    [Obsolete("use no boxing version: GetInPath/SetInPath Get/Set instead!")]
    public object this[object field]
    {
        get
        {
            return Get<object>(field);
        }
        set
        {
            Set(field, value);
        }
    }

    public void ForEach<TKey, TValue>(Action<TKey, TValue> action)
    {

    }

    public int Length;


    public IEnumerable GetKeys()
    {
        return null;
    }

    public IEnumerable<T> GetKeys<T>()
    {
        return null;
    }

    [Obsolete("use no boxing version: Get<TKey, TValue> !")]
    public T Get<T>(object key)
    {
        T ret;
        Get(key, out ret);
        return ret;
    }

    public TValue Get<TKey, TValue>(TKey key)
    {
        TValue ret;
        Get(key, out ret);
        return ret;
    }

    public TValue Get<TValue>(string key)
    {
        TValue ret;
        Get(key, out ret);
        return ret;
    }

    public void SetMetaTable(LuaTable metaTable)
    {

    }

    public T Cast<T>()
    {
        return default(T);
    }

    public override string ToString()
    {
        return null;
    }
}
