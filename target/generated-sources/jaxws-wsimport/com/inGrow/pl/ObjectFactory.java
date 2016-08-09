
package com.inGrow.pl;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.inGrow.pl package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Hello1_QNAME = new QName("http://databaseLayer/", "hello1");
    private final static QName _Hello2Response_QNAME = new QName("http://databaseLayer/", "hello2Response");
    private final static QName _Hello1Response_QNAME = new QName("http://databaseLayer/", "hello1Response");
    private final static QName _Hello2_QNAME = new QName("http://databaseLayer/", "hello2");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.inGrow.pl
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Hello1Response }
     * 
     */
    public Hello1Response createHello1Response() {
        return new Hello1Response();
    }

    /**
     * Create an instance of {@link Hello2 }
     * 
     */
    public Hello2 createHello2() {
        return new Hello2();
    }

    /**
     * Create an instance of {@link Hello1 }
     * 
     */
    public Hello1 createHello1() {
        return new Hello1();
    }

    /**
     * Create an instance of {@link Hello2Response }
     * 
     */
    public Hello2Response createHello2Response() {
        return new Hello2Response();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello1 }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://databaseLayer/", name = "hello1")
    public JAXBElement<Hello1> createHello1(Hello1 value) {
        return new JAXBElement<Hello1>(_Hello1_QNAME, Hello1 .class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello2Response }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://databaseLayer/", name = "hello2Response")
    public JAXBElement<Hello2Response> createHello2Response(Hello2Response value) {
        return new JAXBElement<Hello2Response>(_Hello2Response_QNAME, Hello2Response.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello1Response }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://databaseLayer/", name = "hello1Response")
    public JAXBElement<Hello1Response> createHello1Response(Hello1Response value) {
        return new JAXBElement<Hello1Response>(_Hello1Response_QNAME, Hello1Response.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello2 }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://databaseLayer/", name = "hello2")
    public JAXBElement<Hello2> createHello2(Hello2 value) {
        return new JAXBElement<Hello2>(_Hello2_QNAME, Hello2 .class, null, value);
    }

}
