/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Attribute;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.DataType;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.DomainModelTestFactory;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.DomainModelTestPackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Import;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Model;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Property;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Reference;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Type;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class DomainModelTestFactoryImpl extends EFactoryImpl implements DomainModelTestFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static DomainModelTestFactory init()
  {
    try
    {
      DomainModelTestFactory theDomainModelTestFactory = (DomainModelTestFactory)EPackage.Registry.INSTANCE.getEFactory(DomainModelTestPackage.eNS_URI);
      if (theDomainModelTestFactory != null)
      {
        return theDomainModelTestFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new DomainModelTestFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public DomainModelTestFactoryImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EObject create(EClass eClass)
  {
    switch (eClass.getClassifierID())
    {
      case DomainModelTestPackage.MODEL: return createModel();
      case DomainModelTestPackage.IMPORT: return createImport();
      case DomainModelTestPackage.TYPE: return createType();
      case DomainModelTestPackage.DATA_TYPE: return createDataType();
      case DomainModelTestPackage.CLASS: return createClass();
      case DomainModelTestPackage.PROPERTY: return createProperty();
      case DomainModelTestPackage.ATTRIBUTE: return createAttribute();
      case DomainModelTestPackage.REFERENCE: return createReference();
      default:
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Model createModel()
  {
    ModelImpl model = new ModelImpl();
    return model;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Import createImport()
  {
    ImportImpl import_ = new ImportImpl();
    return import_;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Type createType()
  {
    TypeImpl type = new TypeImpl();
    return type;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public DataType createDataType()
  {
    DataTypeImpl dataType = new DataTypeImpl();
    return dataType;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Class createClass()
  {
    ClassImpl class_ = new ClassImpl();
    return class_;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Property createProperty()
  {
    PropertyImpl property = new PropertyImpl();
    return property;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Attribute createAttribute()
  {
    AttributeImpl attribute = new AttributeImpl();
    return attribute;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Reference createReference()
  {
    ReferenceImpl reference = new ReferenceImpl();
    return reference;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public DomainModelTestPackage getDomainModelTestPackage()
  {
    return (DomainModelTestPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static DomainModelTestPackage getPackage()
  {
    return DomainModelTestPackage.eINSTANCE;
  }

} //DomainModelTestFactoryImpl
