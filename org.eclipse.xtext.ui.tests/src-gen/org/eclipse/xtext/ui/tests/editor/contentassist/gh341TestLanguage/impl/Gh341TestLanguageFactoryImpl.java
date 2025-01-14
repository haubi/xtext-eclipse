/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.gh341TestLanguage.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.eclipse.xtext.ui.tests.editor.contentassist.gh341TestLanguage.*;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class Gh341TestLanguageFactoryImpl extends EFactoryImpl implements Gh341TestLanguageFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static Gh341TestLanguageFactory init()
  {
    try
    {
      Gh341TestLanguageFactory theGh341TestLanguageFactory = (Gh341TestLanguageFactory)EPackage.Registry.INSTANCE.getEFactory(Gh341TestLanguagePackage.eNS_URI);
      if (theGh341TestLanguageFactory != null)
      {
        return theGh341TestLanguageFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new Gh341TestLanguageFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Gh341TestLanguageFactoryImpl()
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
      case Gh341TestLanguagePackage.MODEL: return createModel();
      case Gh341TestLanguagePackage.ELEMENT: return createElement();
      case Gh341TestLanguagePackage.WORKS: return createWorks();
      case Gh341TestLanguagePackage.BROKEN: return createBroken();
      case Gh341TestLanguagePackage.THIRD: return createThird();
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
  public Element createElement()
  {
    ElementImpl element = new ElementImpl();
    return element;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Works createWorks()
  {
    WorksImpl works = new WorksImpl();
    return works;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Broken createBroken()
  {
    BrokenImpl broken = new BrokenImpl();
    return broken;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Third createThird()
  {
    ThirdImpl third = new ThirdImpl();
    return third;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Gh341TestLanguagePackage getGh341TestLanguagePackage()
  {
    return (Gh341TestLanguagePackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static Gh341TestLanguagePackage getPackage()
  {
    return Gh341TestLanguagePackage.eINSTANCE;
  }

} //Gh341TestLanguageFactoryImpl
